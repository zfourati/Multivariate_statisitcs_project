
hist_plot <- function(column, main, xlab, color = "darkmagenta", breaks=30) {
    hist(column,
         main = main,
         xlab = xlab,
         col = color,
         freq = FALSE,
         breaks = breaks
    )
    
    # Add a density curve
    lines(density(column), col = "blue", lwd = 2)
}


qq_plot_comparison <- function(original_data, transformed_data, 
            title_original="Q-Q Plot: Original Data", 
            title_transformed="Q-Q Plot: Transformed Data") {

    par(mfrow=c(1,2))

    # Q-Q plot for original data
    qqnorm(original_data, main=title_original, col="lightblue")
    qqline(original_data, col="blue", lwd=2)

    # Q-Q plot for transformed data
    qqnorm(transformed_data, main=title_transformed, col="darkmagenta")
    qqline(transformed_data, col="blue", lwd=2)

    # Reset plotting parameters
    par(mfrow=c(1,1))
}