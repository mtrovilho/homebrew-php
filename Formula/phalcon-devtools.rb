class PhalconDevtools < Formula
  desc "Phalcon Developer Tools"
  homepage "https://github.com/phalcon/phalcon-devtools"
  url "https://github.com/phalcon/phalcon-devtools/archive/v3.2.12.tar.gz"
  sha256 "53775feae5957621bf0ccc8927d4283ce4e58c25faae6483b442a2e23cd2ff7d"

  bottle :unneeded

  def install
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/phalcon.php" => "phalcon"
  end

  test do
    system "#{bin}/phalcon", "info"
  end
end
