# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pi < Formula
  desc ""
  homepage "https://github.com/nomad10101/portola"
  version "0.0.101"
  depends_on :macos

  on_intel do
    url "https://github.com/nomad10101/portola-release/releases/download/v0.0.101/portola-release_Darwin_x86_64.tar.gz"
    sha256 "2dcc1e5ab549a41d33ef8090744a368effc0292af2a3738e9abd9be629ef9f1b"

    def install
      bin.install "pi"
      prefix.install Dir["config/ci/resources"]
    end
  end
  on_arm do
    url "https://github.com/nomad10101/portola-release/releases/download/v0.0.101/portola-release_Darwin_arm64.tar.gz"
    sha256 "29a8b8c1192be2bf0cc714b542738fd710c388b664b578a26de868ed01675a07"

    def install
      bin.install "pi"
      prefix.install Dir["config/ci/resources"]
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
  end
end
