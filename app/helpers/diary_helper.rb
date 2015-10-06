module DiaryHelper
	def table_cell type, number
		case type
		when "alcohol"
			case number 
			when 0.0 || nil
				a = "안먹음" 
			when 0.2  
				a = "맥주 쪼끔" 
			when 0.5  
				a = "반병"
			when 1.0 
				a = "한병" 
			when 1.5  
				a = "한병 반"
			when 2.0  
				a = "두병 이상(꽐라)" 
			end

			unless a == "안먹음"
				content_tag :span, class: "label label-danger" do
					"음주 : #{a}"
				end
			end
		when "exercise"
			case number 
			when 0.0 || nil
				a = "안함" 
			when 0.25  
				a = "15분" 
			when 0.5  
				a = "30분"
			when 0.75 
				a = "45분" 
			when 1.0  
				a = "1시간 이상" 
			end

			unless a == "안함"
				content_tag :span, class: "label label-success" do
					"운동 : #{a}"
				end
			end

		when "reading"
			case number 
			when 0.0 || nil
				a = "안읽음" 
			when 1.0  
				a = "1시간 이하" 
			when 2.0  
				a = "2시간"
			when 3.0 
				a = "3시간" 
			when 4.0  
				a = "4시간 이상" 
			end

			unless a == "안읽음"
				content_tag :span, class: "label label-info" do
					"독서 : #{a}"
				end
			end
		when "comment"
			unless number == nil? || number == ""
				content_tag :span, class: "label label-default" do
					"일기 : 씀"
				end		
			end
		end
	end
end
