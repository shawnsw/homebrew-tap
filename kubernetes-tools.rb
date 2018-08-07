class KubernetesTools < Formula
  desc "Kubernetes tools is a set of programs that help you operate your Kubernetes clusters more efficiently."
  homepage "https://github.com/shawnxlw/kubernetes-tools"
  url "https://github.com/shawnxlw/kubernetes-tools/archive/v1.2.0.tar.gz"
  sha256 "a331bd507328b99c08cca5c85f814e1456332fc77ba2f5c2812244eb43184bce"

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
