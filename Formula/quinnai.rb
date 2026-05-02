class Quinnai < Formula
  include Language::Python::Virtualenv

  desc "Hierarchical AI organization management CLI"
  homepage "https://github.com/qosha1/quinn-ai"
  url "https://github.com/qosha1/quinn-ai/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "4b1838b74e2d1084932633893f9def072cd9189e9d9b77db6f0f8d469f94cb1a"
  license "MIT"
  head "https://github.com/qosha1/quinn-ai.git", branch: "main"

  depends_on "python@3.12"
  depends_on "tmux"

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "398329ad4837b2ff7cbe1dd166a4c0f8900c3ca3a218de04466f38f6497f18a2"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "QuinnAI", shell_output("#{bin}/qn --help")
    assert_match "msgr", shell_output("#{bin}/msgr --help")
  end

  caveats <<~EOS
    QuinnAI requires the beads CLI (bd) for task tracking:
      brew tap qosha1/beads   # if available, or install manually
      pip install bd

    Tmux is required for session management and is installed as a dependency.

    Quick start:
      qn org init --ceo-name Alice
      qn org start
      qn board ui
  EOS
end
