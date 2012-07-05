require 'formula'

class Gcutil < Formula
  homepage 'https://developers.google.com/compute/docs/gcutil_setup'
  url 'http://dl.google.com/dl/compute/gcutil.tar.gz'
  sha1 'ff3250e859bf9fa38fa0681e1df99dcfcb6d52ca'
  version 'v1beta12'

  def install
    (prefix+'share/gcutil/share').install Dir["share/*"]
    chmod 0755, 'gcutil'
    bin.install 'gcutil'
  end

  def test
    system "#{bin}/gcutil"
  end
end

