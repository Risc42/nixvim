{
  autoGroups.coqtail = {
    # The Coq filetype is often 'coq' or 'v'
    start = [
      {
        event = "FileType";
        pattern = [
          "coq"
          "v"
        ];
        # This command initializes Coqtail if it's not started automatically
        command = "silent! CoqInit";
      }
    ];
  };
}
