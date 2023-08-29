# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cagent < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.46/portola-release_Darwin_arm64.tar.gz"
      sha256 "14413dde633d2afc7f338657193e14e59ab1bbf9d1326f6cf26e537aad978089"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.46/portola-release_Darwin_x86_64.tar.gz"
      sha256 "04f7d88bf8666487bde22e5a2eb2f38ab732c111fc96d5a256eaa154fec69067"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.46/portola-release_Linux_arm64.tar.gz"
      sha256 "d83f20f91240c8f5cdba3dd62ce67dc244bc36b1019e76dcd88c4cd37307a96a"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.46/portola-release_Linux_x86_64.tar.gz"
      sha256 "9195ae244705569725e3d14528d3c3b202fe84e5037d51f63be2627074ffa818"

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
