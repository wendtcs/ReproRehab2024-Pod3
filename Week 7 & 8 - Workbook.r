rm(list=ls())

ReqdLibs = c("here","ggplot2","dplyr","tidyr","stringr","janitor","broom","emmeans")
invisible(lapply(ReqdLibs, library, character.only = TRUE))

# here()
folder_path = getwd()
# folder_path

subfolder_path = paste0(folder_path,'/data/')
# subfolder_path
# dir(subfolder_path)

file_list = list.files(subfolder_path)
# file_list[1]
# file_list[2]
# file_list[3]
file_list

file_list = list.files(subfolder_path)
file_list

file_path = paste0(subfolder_path,file_list[1])
# file_path
temp0 = read.delim(file_path)
# temp0
# head(temp0,5)

new_names = paste(temp0[1,],temp0[4,])

colnames(temp0) = new_names

temp1 = temp0[-c(1:4),]
head(temp1,5)

file_list = list.files(subfolder_path)
file_list

new_names = paste(temp0[1,],temp0[4,])
new_names

data.all = data.frame(list())

for (i in 1:length(file_list)) {
    
file_path = paste0(subfolder_path,file_list[i])
    
temp = read.delim(file_path)
    
colnames(temp) = new_names
temp = temp[-c(1:4),]

data.all = rbind(data.all, temp)    
}
data.all













