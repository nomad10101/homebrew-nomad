# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cagent < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.39/portola-release_Darwin_arm64.tar.gz"
      sha256 "e1a597e6eb1b23ae4698620523ca657bb07c2f858fcacaf52317731d6fcbbb27"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.39/portola-release_Darwin_x86_64.tar.gz"
      sha256 "ecd52f68ee82b62a8695e7df4b55775af0553318c29166815d0a8b8d9ce093c7"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.39/portola-release_Linux_arm64.tar.gz"
      sha256 "5e14b6a33096345f656a1d4c603b0d96099bc2e8506e17670e9f121f459f049a"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.39/portola-release_Linux_x86_64.tar.gz"
      sha256 "b2d70975b22de062a76b543f493ed9ac6a3ac8e9d8662df64c027ac5416edcb1"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
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
    run [opt_bin/"cagent", "--assets-path", opt_prefix/"assets", "service"]
    environment_variables BREW_OPT_HOME: opt_prefix
    keep_alive true
    log_path "#{var}/log/cagent/cagent.out.log"
    error_log_path "#{var}/log/cagent/cagent.err.log"
    process_type :interactive
  end
end
