class KubernetesTools < Formula
  desc "Kubernetes tools is a set of programs that help you operate your Kubernetes clusters more efficiently."
  homepage "https://github.com/shawnxlw/kubernetes-tools"
  url "https://github.com/shawnxlw/kubernetes-tools/archive/v1.0.0.tar.gz"
  sha256 "3ac7e580239503013413056bd398f5ffa093c0163c3eb593d3415b4c6f08d8ae"

    depends_on "tmux"
    depends_on "tmux-cssh"
    depends_on "jq"
    depends_on "coreutils"

    def install
      bin.install "bin/ktools"
      bin.install "bin/kcontext"
      bin.install "bin/kns"
      bin.install "bin/kpod"
      bin.install "bin/kelb"
      bin.install "bin/kall"
      bin.install "bin/kds"
      bin.install "bin/klogs"
      bin.install "bin/ksick"
      bin.install "bin/kexec"
      bin.install "bin/kssh"
      bin.install "bin/kbak"
      prefix.install Dir["completion"]
      prefix.install Dir["helper"]
    end

end
