class KubernetesTools < Formula
  desc "Kubernetes tools is a set of programs that help you operate your Kubernetes clusters more efficiently."
  homepage "https://github.com/shawnxlw/kubernetes-tools"
  url "https://github.com/shawnxlw/kubernetes-tools/archive/v2.0.1.tar.gz"
  sha256 "be5aa7429c601a262a105e23081d89c150ab2a74271d678e42ec2e4e51a26fcb"

    depends_on "jq"
    depends_on "coreutils"

    def install
      bin.install "bin/__common"
      bin.install "bin/ktools"
      bin.install "bin/kctx"
      bin.install "bin/kns"
      bin.install "bin/kpod"
      bin.install "bin/kexec"
      bin.install "bin/kcopy"
      bin.install "bin/busybox"
      bin.install "bin/curl"
      prefix.install Dir["completion"]
    end

end
