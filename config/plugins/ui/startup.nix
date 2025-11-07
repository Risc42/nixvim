{
  plugins.startup = {
    enable = true;

    colors = {
      background = "#ffffff";
      foldedSection = "#ffffff";
    };

    sections = {
      header = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          "                                   ---.           ,-----,       --,                                               "
          "                                  /\\\\\           \OOO0\      /OO0\                                              "
          "                                  \/\\\\\           \OOO0\    /OOOO\                                              "
          "                                   \/\\\\\           \OOO0\  /OOOO/                                               "
          "                                    \/\\\\\           \OOO0\/OOOO/                                                "
          "                              -------\/\\\\\---------  \OOOOOOOO/                                                 "
          "                             ///////////////////////\\  \OOOOOO/                                                  "
          "                            /\\\\\\\\\\\\\\\\\\\\\\\\\\  \OOOO0\                                                  "
          "                           ****************************   \00000\                                                 "
          "                                                           \OOO00\                                                "
          "                                  ,-----                    \O0000\    \                                          "
          "                                 /OOOOO/                     \00000/  /\\                                         "
          "                                /OOOOO/                       \000/  /\\\\                                        "
          "                               /0OOOO/                         \0/  /\\\\/`                                       "
          "                              /00OOO/                           /  /\\\\//                                        "
          "                ,-===========/000OO/                              //\\\//                                         "
          "                \0000OOOOOOOOOOOOO/                              //\\\//                                          "
          "                 \00000OOOOOOOOOO/                              //\\\/---------                                   "
          "                  `*******/OOOOO/                              /\\\\\\\\\\\\\\\\                                  "
          "                         /OOOOO/                              /\\\\\////////////;                                 "
          "                        /OOOOO/                              /\\\\/************'                                  "
          "                       /0OOOO/  \                           /\\\\//                                               "
          "                      \00OOO/  *\\                         /\\\\//                                                "
          "                       \000/  *///\                       /\\\\//                                                 "
          "                        \0/  */////\                     /\\\\//                                                  "
          "                         `    */////\                   *******                                                   "
          "                               */////\                                                                            "
          "                                */////\  =============================                                            "
          "                                 */////\  \000OOOOOOOOOOOOOOOOOOOOOO/                                             "
          "                                 ///////\  \00000OOOOOOOOOO0000OOOO/                                              "
          "                                /////////\  `********`\OOOO\*******                                               "
          "                               ////\\//\//\            \OOOO\                                                     "
          "                              ////\\/ \/\//\            \0OOO\                                                    "
          "                             ////\\/   \/\//\            \00OO\                                                   "
          "                             *//\\/     \/\//\            \0000\                                                  "
          "                              ****       ``***`            ****                                                   "
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      body = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Menu";
        margin = 5;
        content = [
          [
            " Find File"
            "Telescope find_files"
            "ff"
          ]
          [
            "󰍉 Find Word"
            "Telescope live_grep"
            "fr"
          ]
          [
            " Recent Files"
            "Telescope oldfiles"
            "fg"
          ]
          [
            " File Browser"
            "Telescope file_browser"
            "fe"
          ]
        ];
        highlight = "string";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

    options = {
      paddings = [
        1
        3
      ];
    };

    parts = [
      "header"
      "body"
    ];
  };
}
