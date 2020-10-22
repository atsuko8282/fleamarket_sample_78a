# categoryとsizeを紐付けるデータの投入
array = [[2, 1],[21, 1],[43, 1],[56, 1],[62, 1],[67, 2],[78, 1],[174, 1],[175, 1],[176, 1],[179, 1],[180, 1],[181, 1],[186, 1],[201, 1],[214, 1],[238, 1],[248, 3],[270, 1],[331, 1],[332, 1],[340, 1],[346, 4],[358, 4],[367, 4],[376, 5],[395, 5],[410, 5],[419, 6],[921, 11],[922, 11],[927, 12],[1039, 9],[1041, 3],[1042, 2],[1043, 6],[1044, 1],[1045, 1],[1046, 5],[1051, 10],[1052, 3],[1053, 2],[1054, 6],[1056, 1],[1057, 1],[1058, 5],[1200, 7],[1252, 8]]

array.each do |element|
  element1 = element[0] #category_id
  element2 = element[1] #size_id
  CategoriesSize.create(category_id: element1, size_id:element2)
end