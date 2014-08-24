# makeCodebook.R
# Creates a codebook
# NOTE: Assumes that this is run immediately after run_analysis.R to ensure that
# the variables exist in the workspace

# Read in the header Codebook markdown document (so I don't have to put
# everything in this script.)

sink('CodeBook.md')
# Got these two lines from 
# http://stackoverflow.com/questions/9068397/import-text-file-as-single-character-string
headerFile <- 'codebookHead.md'
header <- readChar(headerFile, file.info(headerFile)$size)
cat(header)
cat("\n\n")

featNames <- names(tidyData)
cat("### Variables\n\n")
cat(paste("This dataset contains ", nrow(tidyData), 
          " which corresponds to all combinations of ",
          length(unique(tidyData$Subject)), " subjects and ",
          length(unique(tidyData$Activity)), " activities."))
cat(paste("There are ", length(featNames), " columns in the dataset."))
cat(paste("These columns are described below.\n\n"))

for (i in 1:length(featNames)) {
    # Calculate the range
    if(!is.factor(tidyData[,i])) {
        # if not a factor calculate min and max
        colMin <- min(tidyData[,i])
        colMax <- max(tidyData[,i])
        rangeStr <- paste("[",colMin,",",colMax,"]")
    } else {
        # if a factor, output the levels
        rangeStr <- paste(levels(tidyData[,i]),collapse=",")
    }

    # Output
    cat("---\n")
    cat(paste("Variable name: ", featNames[i], "\n\n"))
    cat(paste("Colunm position: ", i, "\n\n"))
    cat(paste("R Class: ", class(tidyData[,i]), "\n\n"))
    cat(paste("Range: ", rangeStr, "\n\n"))
}
    