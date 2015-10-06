a = Activity.group(:date).sum(:alcohol)
b = a.clone.each{|k, v| 
	x = k.strftime("%m월 %d일")
	a[x] = a.delete :old_keys
	a[x] = v
	a.delete
}
puts a
puts b