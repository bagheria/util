# find and remove all the duplicate files
dirname         <- "D:/Data/ohsumed-first-20000-docs/test"
files           <- list.files(dirname, all.files = TRUE, recursive = TRUE)
names           <- basename(files)
duplicate_names <- unique(names[duplicated(names)])
all_duplicates  <- files[names %in% duplicate_names]

# Now remove the files
unlink(file.path(dirname, all_duplicates))
