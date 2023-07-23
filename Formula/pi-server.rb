require "formula"
require_relative "../custom_download_strategy.rb"
class Wget < Formula
  homepage "https://www.gnu.org/software/wget/"
  url "https://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  sha256 "52126be8cf1bddd7536886e74c053ad7d0ed2aa89b4b630f76785bac21695fcd"
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
  test do
    system "#{bin}/wget --help"
  end
end
