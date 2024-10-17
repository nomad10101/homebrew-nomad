# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pi < Formula
  desc ""
  homepage "https://github.com/nomad10101/portola"
  version "0.0.11"
  depends_on :macos

  on_intel do
    url "https://github.com/nomad10101/portola-release/releases/download/v0.0.11/portola-release_Darwin_x86_64.tar.gz"
    sha256 "8f20a952ac426f99d3ec8166bcf73d3d256ca0fb1a637583cc9d32ea927351c2"

    def install
      bin.install "pi"
      prefix.install Dir["assets"]
      prefix.install_symlink Dir["assets"]
    end
  end
  on_arm do
    url "https://github.com/nomad10101/portola-release/releases/download/v0.0.11/portola-release_Darwin_arm64.tar.gz"
    sha256 "ae79ae20cf87d35b5e0dbdf782aab9cd28f1211a96f708062c18c5013a4a1571"

    def install
      bin.install "pi"
      prefix.install Dir["assets"]
      prefix.install_symlink Dir["assets"]
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
    run [opt_bin/"pi", "--assets-path", opt_prefix/"assets", "service"]
    environment_variables BREW_OPT_HOME: opt_prefix
    keep_alive true
    log_path "#{var}/log/pi/pi.out.log"
    error_log_path "#{var}/log/pi/pi.err.log"
    process_type :interactive
  end
end