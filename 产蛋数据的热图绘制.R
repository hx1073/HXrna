egg_data <- read.csv("egg_data",header = T,rownames = 1) 
pdf("heatmap_egg.pdf", width = 20, height = 10)
my_colors = c("white", "red")
# 绘制热图
Heatmap(egg_data, 
        rect_gp = gpar(type = "none"),
        show_row_dend = TRUE,
        show_column_dend = TRUE,
        col = my_colors,  # 应用颜色映射
        cell_fun = function(j, i, x, y, w, h, fill) {
          grid.roundrect(x, y, w, h, r = unit(0.4, "snpc"),
                         gp = gpar(col = "white", fill = fill, lwd = 5))
        },
        show_row_names = FALSE,
        show_column_names = FALSE)
dev.off()
