class KubernetesTools < Formula
  desc "Kubernetes tools is a set of programs that help you operate your Kubernetes clusters more efficiently."
  homepage "https://github.com/shawnxlw/kubernetes-tools"
  url "https://github.com/shawnxlw/kubernetes-tools/archive/v2.0.0.tar.gz"
  sha256 "775d5fb697c18e467c66bf208f092bc7a72468877ce22776597d80c6c4ef5dc3"

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
