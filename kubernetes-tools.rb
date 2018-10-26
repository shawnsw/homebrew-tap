class KubernetesTools < Formula
  desc "Kubernetes tools is a set of programs that help you operate your Kubernetes clusters more efficiently."
  homepage "https://github.com/shawnxlw/kubernetes-tools"
  url "https://github.com/shawnxlw/kubernetes-tools/archive/v2.1.0.tar.gz"
  sha256 "b138d235cb0c53bcb2f5c0ecee029d9776d9007ab16c16f82f919465cebeb5f8"

    depends_on "jq"
    depends_on "coreutils"

    def install
      bin.install "bin/__common"
      bin.install "bin/ktools"
      bin.install "bin/kctx"
      bin.install "bin/kns"
      bin.install "bin/kpod"
      bin.install "bin/klogs"
      bin.install "bin/kexec"
      bin.install "bin/kcopy"
      prefix.install Dir["completion"]
    end

end
