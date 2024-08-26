class Jextract < Formula
  desc "Mechanically generates Java bindings from native library headers"
  homepage "https://jdk.java.net/jextract/"
  license "GPL-2.0-with-classpath-exception"
  on_macos do
    on_arm do
      url "https://download.java.net/java/early_access/jextract/22/5/openjdk-22-jextract+5-33_macos-aarch64_bin.tar.gz"
      sha256 "2a4411c32aedb064c3e432eb8a2791e6e60fea452330c71386f6573dc4c9c850"
    end
    on_intel do
      url "https://download.java.net/java/early_access/jextract/22/5/openjdk-22-jextract+5-33_macos-x64_bin.tar.gz"
      sha256 "0f65d480a1713d73c179e91f3ab6b9553c22694cd1a9f7936ffa8ca351d12390"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"bin/jextract")
  end

  test do
    system bin/"jextract", "--version"
  end
end
