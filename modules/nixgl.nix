{nixgl, ...}: {
  nixGL = {
    inherit (nixgl) packages;
    defaultWrapper = "mesa";
    offloadWrapper = "nvidiaPrime";
    installScripts = ["mesa" "nvidiaPrime"];
  };
}
