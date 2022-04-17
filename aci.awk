# 
#                ________   ________   _________   ___   ________   ___        _______                                    
#               |\   __  \ |\   __  \ |\___   ___\|\  \ |\   ____\ |\  \      |\  ___ \                                   
#               \ \  \|\  \\ \  \|\  \\|___ \  \_|\ \  \\ \  \___| \ \  \     \ \   __/|                                  
#                \ \   __  \\ \   _  _\    \ \  \  \ \  \\ \  \     \ \  \     \ \  \_|/__                                
#                 \ \  \ \  \\ \  \\  \|    \ \  \  \ \  \\ \  \____ \ \  \____ \ \  \_|\ \                               
#                  \ \__\ \__\\ \__\\ _\     \ \__\  \ \__\\ \_______\\ \_______\\ \_______\                              
#                   \|__|\|__| \|__|\|__|     \|__|   \|__| \|_______| \|_______| \|_______|                              
#    ________   ________   ________    _________   ___   ________    ___  ___   ________   ___  ___   ________            
#   |\   ____\ |\   __  \ |\   ___  \ |\___   ___\|\  \ |\   ___  \ |\  \|\  \ |\   __  \ |\  \|\  \ |\   ____\           
#   \ \  \___| \ \  \|\  \\ \  \\ \  \\|___ \  \_|\ \  \\ \  \\ \  \\ \  \\\  \\ \  \|\  \\ \  \\\  \\ \  \___|_          
#    \ \  \     \ \  \\\  \\ \  \\ \  \    \ \  \  \ \  \\ \  \\ \  \\ \  \\\  \\ \  \\\  \\ \  \\\  \\ \_____  \         
#     \ \  \____ \ \  \\\  \\ \  \\ \  \    \ \  \  \ \  \\ \  \\ \  \\ \  \\\  \\ \  \\\  \\ \  \\\  \\|____|\  \        
#      \ \_______\\ \_______\\ \__\\ \__\    \ \__\  \ \__\\ \__\\ \__\\ \_______\\ \_______\\ \_______\ ____\_\  \       
#       \|_______| \|_______| \|__| \|__|     \|__|   \|__| \|__| \|__| \|_______| \|_______| \|_______||\_________\      
#                                                                                                       \|_________|      
#    ___   ________    _________   _______    ________   ________   ________   _________   ___   ________   ________      
#   |\  \ |\   ___  \ |\___   ___\|\  ___ \  |\   ____\ |\   __  \ |\   __  \ |\___   ___\|\  \ |\   __  \ |\   ___  \    
#   \ \  \\ \  \\ \  \\|___ \  \_|\ \   __/| \ \  \___| \ \  \|\  \\ \  \|\  \\|___ \  \_|\ \  \\ \  \|\  \\ \  \\ \  \   
#    \ \  \\ \  \\ \  \    \ \  \  \ \  \_|/__\ \  \  ___\ \   _  _\\ \   __  \    \ \  \  \ \  \\ \  \\\  \\ \  \\ \  \  
#     \ \  \\ \  \\ \  \    \ \  \  \ \  \_|\ \\ \  \|\  \\ \  \\  \|\ \  \ \  \    \ \  \  \ \  \\ \  \\\  \\ \  \\ \  \ 
#      \ \__\\ \__\\ \__\    \ \__\  \ \_______\\ \_______\\ \__\\ _\ \ \__\ \__\    \ \__\  \ \__\\ \_______\\ \__\\ \__\
#       \|__| \|__| \|__|     \|__|   \|_______| \|_______| \|__|\|__| \|__|\|__|     \|__|   \|__| \|_______| \|__| \|__|
#                                                                                                                       
# 
# 
# DESCRIPTION:
# 
#     Article Continuous Integration (ACI), as the name implies, is a tool to help with 
#     the continuous integration of articles. Specifically, it adds several proprietary 
#     notations to the general Markdown notation. The intended audience for this tool is 
#     anyone who creates technical articles about programming.
# 
#
#
# FEATURES:
# 
#     The following is a list of features provided by ACI.
#     
#        -   Specifying files in code blocks
#        -   Code block operation
#        -   Visualization of directories by tree structure
#        -   Create a table of contents based on heading
#        -   Expand file contents in list format
#        -   Append the playground URL of the program
#
# 
#
# NOTATION:
#
#     The content enclosed in "<>" indicates a required field, and "[]" indicates an 
#     optional field. All "<file-path>" in the following notation are relative paths.
#
#
#     === Specifying files in code blocks
# 
#         Expand the source code between "<start>" and "<end>" as a code block. 
#         "<url-string>" to describe the playground URL of the expanded source code in 
#         addition to the code block. If the file does not exist, the message 
#         "No such file" is written in the code block.
#         If you want the entire contents of the program to be expanded into a code block, 
#         enter a whitespace(" ") in the "<start>" and "<end>" sections.
# 
#             ```<language>:<file-path>:<start>:<end>[:url-string]```
#
#
#     === Code block operation
#
#         In addition to the language, a sequence of the above notations can be written 
#         to join source code together. The merging is done in the order in which they 
#         are described. "<pattern>" is "<file-path>:<start>:<end>. "<pattern>" is 
#         aligned with whitespace. There is no limit to the number of joins as long as 
#         no line breaks are made
#
#             ```<language>|<pattern> <pattern>...```
#
#
#     === Visualization of directories by tree structure
#
#         Expands the tree structure of the specified directory as code blocks.
#         "<directory-path>" is also relative, as is "<file-path>".
#
#             ```tree:<directory-path>````
# 
#
#     === Create a table of contents based on heading
#
#         Expand the table of contents where the following notation is entered: 
#         "<file-name>" usually describes itself. This is to read your file content 
#         once. "<url-prefix>" writes the common content described in "[]". 
#         "[heading-start]" and "[heading-end]" are optional and allow you to specify 
#         the size range of the heading to be treated as a table of contents. Normally, 
#         the range is from 2 to 6, not including h1(#). Note that if you want to specify 
#         2 to 5, you must also specify 2.
#
#             -_|<file-name>|<url-prefix>[|heading-start[|heading-end]]
#
#
#     === Expand file contents in list format
#
#         Reads the contents of the specified file line by line and expands it in list 
#         format. The "<type>" can be "li" for bulleted or numbered "ol" as in normal HTML. 
#         "[summary-word]" to enclose the expanded contents in a list format with 
#         "<details>" tags.
#
#             -|<type>|<file-path>[|summary-word]
#
#
#
# USAGE:
# 
#     Execute the following command and the output results will be displayed on the 
#     command line. No new files are created.
# 
#         $ awk -f aci.awk <base-file>
# 
#     To write from the base file to a new file, execute the following command.
#
#         $ awk -f aci.awk <base-file> > <target-file>
# 
#     It may be better to define it globally as its own command.
#
#

BEGIN {
    # Languages comment-out format
    data["awk"] = "#";
    data["bash"] = "#";
    data["bat"] = "rem";
    data["c"] = "//";
    data["c#"] = "//";
    data["c++"] = "//";
    data["cpp"] = "//";
    data["cs"] = "//";
    data["css"] = "/*";
    data["dart"] = "//";
    data["dot"] = "//";
    data["go"] = "//";
    data["haskell"] = "--";
    data["html"] = "<!--";
    data["java"] = "//";
    data["javascript"] = "//";
    data["jl"] = "#";
    data["js"] = "//";
    data["julia"] = "#";
    data["lisp"] = ";";
    data["lua"] = "--";
    data["makefile"] = "#";
    data["mk"] = "#";
    data["nim"] = "#";
    data["objectivec"] = "//";
    data["php"] = "//";
    data["powershell"] = "#";
    data["py"] = "#";
    data["python"] = "#";
    data["qs"] = "//";
    data["q sharp"] = "//";
    data["qml"] = "//";
    data["qbs"] = "//";
    data["pri"] = "#";
    data["qs"] = "//";
    data["rsx"] = "#";
    data["raml"] = "#";
    data["rexx"] = "/*";
    data["pprx"] = "/*";
    data["rex"] = "/*";
    data["qmd"] = "<!--";
    data["rmd"] = "<!--";
    data["spec"] = "#";
    data["6pl"] = "#";
    data["6pm"] = "#";
    data["nqp"] = "#";
    data["p6l"] = "#";
    data["p6m"] = "#";
    data["pl"] = "#";
    data["pl6"] = "#";
    data["pm"] = "#";
    data["pm6"] = "#";
    data["raku"] = "#";
    data["rakumod"] = "#";
    data["t"] = "#";
    data["r"] = "#";
    data["rb"] = "#";
    data["rs"] = "//";
    data["ruby"] = "#";
    data["rust"] = "//";
    data["scala"] = "//";
    data["sh"] = "#";
    data["shell"] = "#";
    data["swift"] = "//";
    data["ts"] = "//";
    data["typescript"] = "//";

    # URL encoding
    for (i = 0; i < 256; i++) { 
        c2p[sprintf("%c", i)] = sprintf("%%%02X", i);
    }

    for (i = 48; i < 58; i++) { 
        c2p[sprintf("%c", i)] = sprintf("%c", i);
    }

    for (i = 65; i < 91; i++) {
        c2p[sprintf("%c", i)] = sprintf("%c", i);
    }

    for (i = 97; i < 123; i++) {
        c2p[sprintf("%c", i)] = sprintf("%c", i);
    }
    
    c2p["-"] = "-";
    c2p["."] = ".";
    c2p["_"] = "_";
    c2p["%"] = "%25";
    c2p["+"] = "%2B";
    c2p[" "] = "%20";
    c2p["/"] = "%2F";
    c2p["?"] = "%3F";
    c2p["#"] = "%23";
    c2p["&"] = "%26";
    c2p["="] = "%3D";
    c2p[";"] = "%3B";
    c2p[":"] = "%3A";
    c2p["@"] = "%40";
    c2p["$"] = "%24";
    c2p["\""] = "%22";
    c2p["<"] = "%3C";
    c2p[">"] = "%3E";
    c2p["#"] = "%23";
    c2p["{"] = "%7B";
    c2p["}"] = "%7D";
    c2p["|"] = "%7C";
    c2p["\\"] = "%5C";
    c2p["^"] = "%5E";
    c2p["~"] = "%7E";
    c2p["["] = "%5B";
    c2p["]"] = "%5D";
    c2p["`"] = "%60";
    c2p["'"] = "%27";
}


function command_runner(path, start, end, comment_word) {
    # Function that reads a program file and outputs the code between specified ranges; 
    # if start and end are blank, the entire source code is output as is

    if (start != " " && end != " ") {
        cmd = sprintf("awk /%s/,/%s/'{print $0}' %s", start, end, path);
        comment_out_start = sprintf("%s %s", comment_word, start);
        comment_out_end = sprintf("%s %s", comment_word, end);

        while (cmd | getline line) {
            if (line != comment_out_start && line != comment_out_end) {
                print(line);
            }
        }
    } else {
        # For when you want to expand the entire contents of a file into code blocks
        # Example: ```python:./main.py: : ```
        #     This is achieved by writing a whitespace in the "<start>" and "<end>" sections.
        cmd = sprintf("awk '{print $0}' %s", path)
        while (cmd | getline line) {
            print(line);
        }
    }

    close(cmd);
}


function command_runner_for_playground(path, start, end, comment_word, url_word) {
    # Extension of normal command_runner to output playground url
    OFS = "";
    ORS = "";

    cmd = sprintf("awk /%s/,/%s/'{print $0}' %s", start, end, path);
    comment_out_start = sprintf("%s %s", comment_word, start);
    comment_out_end = sprintf("%s %s", comment_word, end);

    print(sprintf("\n[%s](https://play.rust-lang.org/?version=stable&mode=debug&edition=2021&code=", url_word));
    while (cmd | getline line) {
        print("%0A");
        for (i = 1; i <= length(line); i++) {
            if (line != comment_out_start && line != comment_out_end) {
                print(c2p[substr(line, i, 1)]);
            }
        }
    }
    print(")\n");
    close(cmd);

    OFS = " ";
    ORS = "\n";
}


function line_counter(cmd) {
    # Function to count the number of lines in a file and return the value
    line_count = 0;
    while (cmd | getline line) {
        line_count += 1;
    }
    close(cmd);
    return line_count;
}


function table_of_contents_generator(file_path, url_prefix, start_heading_number, end_heading_number) {
    #
    # | Prefix | Number of hash sign | Indents | 
    # | ------ | ------------------- | ------- |
    # | ##     | 2                   | 0       |
    # | ###    | 3                   | 2       |
    # | ####   | 4                   | 4       |
    # | #####  | 5                   | 6       |
    # | ###### | 6                   | 8       |
    #
    # Equation:
    # 
    #         (|1 - x| - 1) + (x - y)
    #
    #     x: Number of hash sign(#)
    #     y: Number of standard headings
    #
    #
    # Example:
    # 
    #     y = 2
    #
    #     Example1: ## h2
    #      
    #         (|1 - 2| - 1) + (2 - 2) = (|-1| - 1) + 0
    #                                 = (1 - 1) + 0
    #                                 = 0 + 0
    #                                 = 0
    #
    #     Example2: ##### h5
    #
    #         (|1 - 5| - 1) + (5 - 2) = (|-4| - 1) + 3
    #                                 = (4 - 1) + 3
    #                                 = 3 + 3
    #                                 = 6
    #

    ORS = "";

    cmd = sprintf("awk '/^#{1,6}/ {print $0}' %s", file_path);

    # Define the number for relative comparison when the standard is 2
    base_value_correction = (abs(1 - (start_heading_number + 1)) - 1) + (start_heading_number + 1) - 2;

    # Output lines matching heading(#)
    while (cmd | getline line) {
        split(line, arr, " ");    # "arr[1]" has a minimum of 2 and a maximum of 6 consecutive "#"
        sub("#{1,6} ", "", line); # Example: "### h3" ---> "h3"

        for_url_string = gensub(" ", "-", "g", line); # Convert " " to "-" to expand the headline string as-is as a url

        # Heading 1 is the title, so it is not included in the table of contents
        if (length(arr[1]) > 1) {
            hash_sign_length = length(arr[1]);
            
            if (start_heading_number - 1 < hash_sign_length && hash_sign_length < end_heading_number + 1) {
                hash_sign_length = (abs(1 - hash_sign_length) - 1) + hash_sign_length - base_heading_number;
                
                # Indentation output
                for (i = 0; i < hash_sign_length - base_value_correction; i++) {
                    print(" ");
                }

                # Output link string in list format
                print(sprintf("- [%s](%s%s)\n", line, url_prefix, tolower(for_url_string)));
            }
        }
    }
    close(cmd);

    ORS = "\n";
}


function abs(value) {
    # Functions that return absolute values
    value += 0;
    return value < 0 ? -value : value;
}


function command_runner_for_expanding_data(type, file_path, summary_word) {
    OFS = "";
    ORS = "";
    
    # To generate an error if the type is wrong
    if (type == "li" || type == "ol") {
        cmd = sprintf("awk '{print $0}' %s", file_path);
        line_count = 1; # Counter variable for "ol"

        if (summary_word != "") {
            print(sprintf("<details>\n  <summary>%s</summary>\n\n", summary_word));
        }

        while (cmd | getline line) {
            switch (type) {
                case "li":
                    print(sprintf("- %s\n", line));
                    break;
                case "ol":
                    print(sprintf("%d. %s\n", line_count, line));
                    line_count += 1;
                    break;
            }
        }
        close(cmd);

        # Output the end tag of "<details>" when "summary_word" is entered
        if (summary_word != "") {
            print("\n</details>\n");
        }
    } else {
        print("ERROR: Type does not match\n\n");
    }

    OFS = " ";
    ORS = "\n";
}


# Create a table of contents from a heading
# Notation: -_|<target-file>|<url-string>[|heading-start[|heading-end]]
/-_\|.+\|.+/ {
    split($0, information, "|");
    information_length = length(information);

    # Implementation to be tolerant of the presence of "|" at the end of lines
    if (information_length == 3 || information_length == 4) {
        table_of_contents_generator(information[2], information[3], 2, 6);
    } else if (information_length == 5 || information_length == 6) {
        table_of_contents_generator(information[2], information[3], information[4], information[5]);
    }

    next;
}


# Code block generation from program loading
# Notation: ```<language>:<file-path>:<start>:<end>```
/```.+:.+\..+:.+:.+```/ && !/```.+\|.+```/ {
    split($0, code_block, ":");
    
    count = 0;
    language = code_block[1];
    file_path = code_block[2];
    start = code_block[3];
    end = code_block[4];
    cmd = sprintf("bash -c \"if [[ -e %s ]]; then echo true; else echo false; fi;\"", file_path);

    sub("```", "", language);
    sub("```", "", end);

    print(sprintf("```%s:%s", language, file_path));
    if (cmd | getline line) {
        if (line == "true") {
            # For playground
            if (language == "rust" && length(code_block) == 5) {
                sub("```", "", code_block[5]);
                
                global_file_path = file_path;
                global_start = start;
                global_end = end;
                global_comment_word = data[language];
                global_url_word = code_block[5];
                
                count += 1;
            }

            # Stdout source code
            command_runner(file_path, start, end, data[language]);
        } else {
            print("ERROR: No such file");
        }
    }
    close(cmd);
    print("```");

    start = "";
    end = "";

    # If the counter variable count is greater than 1, that is, if it is a notation for a playground url
    if (count) {
        command_runner_for_playground(\
            global_file_path,
            global_start,
            global_end,
            global_comment_word,
            global_url_word\
        );
    }

    next;
}


# Code block operation
# Notation: ```<language>|<pattern> <pattern>...```
/```.+\|(.+\..+:.+:.+?){2,}```/ {
    split($0, code_block_for_operation, "|");
    
    language = code_block_for_operation[1];
    targets = code_block_for_operation[2];

    sub("```", "", language);
    split(targets, target_list, " ");

    print(sprintf("```%s", language));
    for (i = 1; i <= length(target_list); i++) {
        sub("```", "", target_list[i]);
        split(target_list[i], target, ":");

        file_path = target[1];
        start = target[2];
        end = target[3];
        cmd = sprintf("bash -c \"if [[ -e %s ]]; then echo true; else echo false; fi;\"", file_path);

        if (cmd | getline line) {
            if (line == "true") {
                command_runner(file_path, start, end, data[language]);
            } else {
                print("ERROR: File does not exist");
            }
        }
        close(cmd);

        if (i != length(target_list)) {
            print("");
        }
    }
    print("```");
    next;
}


# Visuallization of directories by tree structure
# Notation: ```tree:<directory-path>```
/```tree:.+```/ {
    split($0, splited, ":");
    path = gensub("```", "", "g", splited[2]);

    cmd = sprintf("tree %s", path);
    line_count = line_counter(cmd);

    print("```");
    while (cmd | getline line) {
        if (line_count > 2) {
            print(line);
            line_count -= 1;
        }
    }
    close(cmd);
    print("```");

    next;
}


# Expanding data in a file
# Notation: -|<type>|<file-path>[|summary-word]
/\-\|.+\|.+/ {
    split($0, arr, "|");
    arr_length = length(arr);

    if (arr_length == 3) {
        # If you put "|" at the end of a line, it is not enclosed in "<details>"
        command_runner_for_expanding_data(arr[2], arr[3], "");
    } else if (arr_length == 4) {
        command_runner_for_expanding_data(arr[2], arr[3], arr[4]);
    }

    next;
}


# If the notation does not match
{   
    print $0;
}
