# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Cserver < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.31/cloudback_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4e129f93876e165d1dbec95cdd36ead303e1678537f671c16813e7c9e9486be7"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.31/cloudback_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "53509f06e6748e1186ce78f8e1790091b2c6d1368c272dcc13ddabb21bd46f2a"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.31/cloudback_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6b34b6fbb318e6028cdef1cad9f20160a93c71fb2b3d9654211bfaec2e10b676"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.31/cloudback_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d369aed717f0945c691ea81be0c02e75d8e0144b2b8345fbdbdccbbc62bcd8d6"

      def install
        bin.install "cserver"
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
    run [opt_bin/"cserver", "--assets-path", opt_prefix/"assets", "service"]
  end
end
