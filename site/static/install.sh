
#!/bin/bash
## **This is an autogenerated file, do not change it manually**

if test -z "$BASH_VERSION"; then
  echo "Please run this script using bash, not sh or any other shell." >&2
  exit 1
fi

install() {
  set -euo pipefail

  dst_dir="${K14SIO_INSTALL_BIN_DIR:-/usr/local/bin}"

  if [ -x "$(command -v wget)" ]; then
    dl_bin="wget -nv -O-"
  else
    dl_bin="curl -s -L"
  fi

  shasum -v 1>/dev/null 2>&1 || (echo "Missing shasum binary" && exit 1)

  if [[ `uname` == Darwin ]]; then
    binary_type=darwin-amd64
    
    ytt_checksum=c792f769e61bbd1322783c04603f443bf1f2a079a840d406ec2c91160534e49e
    imgpkg_checksum=80dc36566ed41638a120434091490d6d46ee68422592f8003025211b16009c13
    kbld_checksum=5fd3afbe09a66fc9e91252c57448045eeeab1ee3f6d305da6f9885186b744e67
    kapp_checksum=5d424f735cdef6ced3f3256312a4dcc99de14a294a5c82cd98a8e470f8b36dee
    kwt_checksum=555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517
    vendir_checksum=f0d84f30c5fe34fb15554db4e27768a3738f0f697fd35b3186499a2ab3607205
    kctrl_checksum=063963dc5957426ea67ab9e3d604e1a2eb35c1057836509457cfba6010fe830f
  else
    binary_type=linux-amd64
    
    ytt_checksum=aa7074d08dc35e588ab0e014f53e98aec0cfed6c3babf8a953c4225007e49ae7
    imgpkg_checksum=0b067b406775ce3b3b4ac668a6d1b89184b8339480f07a48de74a338b334e7b4
    kbld_checksum=67c86ece94a3747b2e011a5b72044b69f2594ca807621b1e1e4c805f6abcaeef
    kapp_checksum=a9bcebef169ba759ba24b341f42022edef5b234b8ba61116df2305b3c8c5f2fb
    kwt_checksum=92a1f18be6a8dca15b7537f4cc666713b556630c20c9246b335931a9379196a0
    vendir_checksum=83b1cd15c6e4f69dc8daed9e38a202f16be7c6130a41adfbf6a5233da6148cb4
    kctrl_checksum=4442f03491aca0299adad3b44061930dccf57eea47cc8289319cb1fc4d9b4029
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin github.com/vmware-tanzu/carvel-ytt/releases/download/v0.42.0/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.42.0"
  
  echo "Installing imgpkg..."
  $dl_bin github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.30.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.30.0"
  
  echo "Installing kbld..."
  $dl_bin github.com/vmware-tanzu/carvel-kbld/releases/download/v0.34.0/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.34.0"
  
  echo "Installing kapp..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp/releases/download/v0.50.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.50.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/vmware-tanzu/carvel-kwt/releases/download/v0.0.6/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.6"
  
  echo "Installing vendir..."
  $dl_bin github.com/vmware-tanzu/carvel-vendir/releases/download/v0.29.0/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.29.0"
  
  echo "Installing kctrl..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.3/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.38.3"
  
}

install
