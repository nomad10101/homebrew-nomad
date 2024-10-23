# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pi < Formula
  desc ""
  homepage "https://github.com/nomad10101/portola"
  version "0.0.136"
  depends_on :macos

  url "https://github.com/nomad10101/portola-release/releases/download/v0.0.136/portola-release_Darwin_x86_64.tar.gz"
  sha256 "24ff3c02c69df9e24e15a4cc491ac6ae79d1e04d5468993206fa5886b64a6ca6"

  def install
    bin.install "pi"
    bin.install "pictl"
    prefix.install Dir["cmd/pi/config/ci/resources"]
    prefix.install "cmd/pi/config/ci/deployment.yaml"
  end

  on_arm do
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the Pi
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end

  def caveats
    <<~EOS
      ****************************************************************
      Listen up...
      ****************************************************************
    EOS
  end

  service do
    run [opt_bin/"pi", "service", "start"]
    environment_variables BREW_OPT_HOME: opt_prefix
    keep_alive true
    log_path "#{var}/log/pi/pi.out.log"
    error_log_path "#{var}/log/pi/pi.err.log"
    process_type :interactive
    working_dir opt_prefix
  end
end
