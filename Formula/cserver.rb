# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Cserver < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.29"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.29/cloudback_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c13513904c282158f3f9314171bb47625156c954eada091447c9bc8d34803cc7"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir ["assets"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.29/cloudback_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b5822c141ccacb620b4f157cb96aea47f162632ae7eae57a78300e842da6b70b"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir ["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.29/cloudback_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e2fc35ac87811c24636c11cf0e9e655370f5ab1e20a672bb19d2f5d142472d80"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir ["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.29/cloudback_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "099e27955d4a9b91cfab61f1dbf0f29fc3b97d798773fd8e26ea4d1557abd8ee"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir ["assets"]
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
    run [opt_bin/"cserver", "--assets-path", opt_prefix/"assets"]
  end
end
