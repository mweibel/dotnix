# Tmux with ./tmux.conf baked in
{ tmux, symlinkJoin, makeWrapper }:
symlinkJoin {
  name = "tmux";
  buildInputs = [makeWrapper];
  paths = [ tmux ];
  postBuild = ''
    wrapProgram "$out/bin/tmux" \
    --add-flags "-f ${./tmux.conf}"
  '';
}