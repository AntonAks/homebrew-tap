# typed: false
# frozen_string_literal: true

class Sdbx < Formula
  desc "Zero-knowledge file sharing CLI — encrypt, share, self-destruct"
  homepage "https://securedbx.com"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/AntonAks/securedbx/releases/download/v#{version}/sdbx_darwin_amd64.tar.gz"
      sha256 "4cc36757f3ae4e07b48e597d9d821f4b3c4c109ec7f60f3e1ed320fa794a9064"
    end

    on_arm do
      url "https://github.com/AntonAks/securedbx/releases/download/v#{version}/sdbx_darwin_arm64.tar.gz"
      sha256 "68691f0647c3f62d85d041de4765aaa7e1754ee7ee671886e930269ec31f19cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AntonAks/securedbx/releases/download/v#{version}/sdbx_linux_amd64.tar.gz"
      sha256 "5f875c86f298977af6cbe6a070532b5e4dfe73ed828bf04248e06fb2fdb84531"
    end

    on_arm do
      url "https://github.com/AntonAks/securedbx/releases/download/v#{version}/sdbx_linux_arm64.tar.gz"
      sha256 "13ffc41db2ed6603be2e34bb1f6022cb9271db0f724e4aba1722b447fb1c9432"
    end
  end

  def install
    bin.install "sdbx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdbx version")
  end
end
