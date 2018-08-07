class KubernetesTools < Formula
  desc "Kubernetes tools is a set of programs that help you operate your Kubernetes clusters more efficiently."
  homepage "https://github.com/shawnxlw/kubernetes-tools"
  url "https://github.com/shawnxlw/kubernetes-tools/archive/v1.2.0.tar.gz"
  sha256 "b99d2641c096c0bc94b8ff32be71304ba5a6561b4b8dbc544051e5f2db6cff54"

    depends_on "tmux"
    depends_on "tmux-cssh"
    depends_on "jq"
    depends_on "coreutils"

    def install
      bin.install "bin/ktools"
      bin.install "bin/kctx"
      bin.install "bin/kns"
      bin.install "bin/kpod"
      bin.install "bin/kds"
      bin.install "bin/klogs"
      bin.install "bin/kexec"
      bin.install "bin/kcp"
      bin.install "bin/kbak"
      bin.install "bin/busybox"
      bin.install "bin/curl"
      prefix.install Dir["completion"]
      prefix.install Dir["helper"]
    end

end
