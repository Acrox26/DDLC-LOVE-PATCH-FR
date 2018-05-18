function updateloading(dt)
	timer = 501
	if l_timer <= 100 then
		l_timer = l_timer + 1
	end
	
	--loading assets
	if l_timer == 5 then
		--splash, title sbreen, gui elements, sfx
		loadstuff()
		splash = love.graphics.newImage('images/bg/splash.png')
		titlebg = love.graphics.newImage('images/bg/bg.png')
		namebox = love.graphics.newImage('images/gui/namebox.png')
		
	--This crashes the game, so it's commented out for now. It runs out of memory I guess?
	--[[elseif l_timer == 10 then
		s1l = love.graphics.newImage('images/sayori/1l.png') 
		s2l = love.graphics.newImage('images/sayori/2l.png') 
		s3a = love.graphics.newImage('images/sayori/3a.png') 
		s3b = love.graphics.newImage('images/sayori/3b.png') 
		s3c = love.graphics.newImage('images/sayori/3c.png') 
		s3d = love.graphics.newImage('images/sayori/3d.png') 
	
	elseif l_timer == 15 then
		s1bl = love.graphics.newImage('images/sayori/1bl.png') 
		s2bl = love.graphics.newImage('images/sayori/2bl.png') 
		saf = love.graphics.newImage('images/sayori/sayori.png')
		s1r = love.graphics.newImage('images/sayori/1r.png') 
		s2r = love.graphics.newImage('images/sayori/2r.png') 
		s1br = love.graphics.newImage('images/sayori/1br.png') 
		s2br = love.graphics.newImage('images/sayori/2br.png') 
	
	elseif l_timer == 20 then
		y1l = love.graphics.newImage('images/yuri/1l.png') 
		y2l = love.graphics.newImage('images/yuri/2l.png') 
		y3_ = love.graphics.newImage('images/yuri/3.png') 
		y1bl = love.graphics.newImage('images/yuri/1bl.png')
		y2bl = love.graphics.newImage('images/yuri/2bl.png')
		y3b = love.graphics.newImage('images/yuri/3b.png')
	
	elseif l_timer == 25 then
		--yaf = love.graphics.newImage('images/yuri/yuri.png') 
		y1r = love.graphics.newImage('images/yuri/1r.png')
		y2r = love.graphics.newImage('images/yuri/2r.png')
		y1br = love.graphics.newImage('images/yuri/1br.png')
		y2br = love.graphics.newImage('images/yuri/2br.png')
	
	elseif l_timer == 30 then
		 n1l = love.graphics.newImage('images/natsuki/1l.png')
		n2l = love.graphics.newImage('images/natsuki/2l.png')
		n3_ = love.graphics.newImage('images/natsuki/3.png')
		n1bl = love.graphics.newImage('images/natsuki/1bl.png')
		--naf = love.graphics.newImage('images/natsuki/natsuki.png') 

	elseif l_timer == 35 then
		n2bl = love.graphics.newImage('images/natsuki/2bl.png')
		n3b = love.graphics.newImage('images/natsuki/3b.png')
		n1r = love.graphics.newImage('images/natsuki/1r.png')
		n2r = love.graphics.newImage('images/natsuki/2r.png')
		n1br = love.graphics.newImage('images/natsuki/1br.png')
		n2br = love.graphics.newImage('images/natsuki/2br.png')
	
	elseif l_timer == 40 then
		m1l = love.graphics.newImage('images/monika/1l.png')
		m2l = love.graphics.newImage('images/monika/2l.png')
		m1r = love.graphics.newImage('images/monika/1r.png')
		m2r = love.graphics.newImage('images/monika/2r.png') 
	
	elseif l_timer == 45 then
		m3a = love.graphics.newImage('images/monika/3a.png') 
		m3b = love.graphics.newImage('images/monika/3b.png') 
	]]
	
	elseif l_timer == 50 then
		--poemgame stuff and fonts
		poemfont = love.graphics.newFont('images/gui/fonts/Halogen')
		sayoristicker1 = love.graphics.newImage('images/gui/poemgame/s_sticker_1.png')
		sayoristicker2 = love.graphics.newImage('images/gui/poemgame/s_sticker_2.png')
		yuristicker1 = love.graphics.newImage('images/gui/poemgame/y_sticker_1.png')

	elseif l_timer == 55 then
		--more poemgame stuff and fonts
		yuristicker2 = love.graphics.newImage('images/gui/poemgame/y_sticker_2.png')
		natsukisticker1 = love.graphics.newImage('images/gui/poemgame/n_sticker_1.png')
		natsukisticker2 = love.graphics.newImage('images/gui/poemgame/n_sticker_2.png')

	elseif l_timer == 100 then
		--go to splash screens and title screen
		alpha = 0
		xaload = 0
		timer = 0
		state = "splash1"
		audioUpdate('1')
	end
end
	
function loadstuff()
	textbox = love.graphics.newImage('images/gui/textbox.png')
	background_Image = love.graphics.newImage('images/bg/menu_bg.png')
	sfx1 = love.audio.newSource('audio/sfx/select.ogg')
	sfx2 = love.audio.newSource('audio/sfx/hover.ogg')
end
	
function bgUpdate(bgx) --background changes
	if xaload == 0 then
		--backgrounds
		if bgx == 'residential' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/residential.png')
		elseif bgx == 'class' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/class.png')
		elseif bgx == 'corridor' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/corridor.png')
		elseif bgx == 'club' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/club.png')
		elseif bgx == 'closet' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/closet.png')
		elseif bgx == 'house' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/house.png')
		elseif bgx == 'kitchen' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/kitchen.png')
		elseif bgx == 'bedroom' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/bedroom.png')
		elseif bgx == 'sayori_bedroom' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/sayori_bedroom.png')
		elseif bgx == 'black' then
			unloadbg()
			bgch = love.graphics.newImage('images/bg/black.png')
			
		--cg bases/backgrounds are added here
		elseif bgx == 's_cg1' then
			unloadbg()
			bgch = love.graphics.newImage('images/cg/s_cg1.png')
		elseif bgx == 'n_cg1_base' then
			unloadbg()
			bgch = love.graphics.newImage('images/cg/n_cg1_base.png')
		elseif bgx == 'y_cg1_base' then
			unloadbg()
			bgch = love.graphics.newImage('images/cg/y_cg1_base.png')
			
		--warning screens
		elseif bgx == 'warning' then
			bgch = love.graphics.newImage('images/bg/warning.png')
			bgch2 = love.graphics.newImage('images/bg/warning2.png')
		elseif bgx == 'warning2' then
			bgch = bgch2
		end
	end	
	bg1 = bgx
end

function cgUpdate(cgx) --cg changes
	if xaload == 0 then
		if cgx == 'y_cg1_exp1' then
			cgch = love.graphics.newImage('images/cg/y_cg1_exp1.png')
		elseif cgx == 'y_cg1_exp2' then
			cgch = love.graphics.newImage('images/cg/y_cg1_exp2.png')
		elseif cgx == 'y_cg1_exp3' then
			cgch = love.graphics.newImage('images/cg/y_cg1_exp3.png')
		elseif cgx == 'n_cg1_exp1' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp1.png')
		elseif cgx == 'n_cg1_exp2' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp2.png')
		elseif cgx == 'n_cg1_exp3' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp3.png')
		elseif cgx == 'n_cg1_exp4' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp4.png')
		elseif cgx == 'n_cg1_exp5' then
			cgch = love.graphics.newImage('images/cg/n_cg1_exp5.png')
		end
	end	
	cg1 = cgx
end

function audioUpdate(audiox) --the audio update function yay
	if xaload == 0 then
		if audiox == '0' then
			audioStop()
			ddlct = love.audio.newSource("audio/bgm/0.ogg", "stream")
			ddlct:setLooping(false)
			ddlct:play()
		elseif audiox == '1' then
			ddlct = love.audio.newSource("audio/bgm/1.ogg", "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '2' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/2.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '3' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/3.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '4' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/4.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '6' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/6.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '7' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/7.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '8' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/8.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '9' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/9.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '10' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/10.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == 's_kill_early' then
			ddlct = love.audio.newSource('audio/bgm/s_kill_early.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_monika' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_monika.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_natsuki' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_natsuki.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_sayori' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_sayori.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		elseif audiox == '5_yuri' then
			audioStop()
			ddlct = love.audio.newSource('audio/bgm/5_yuri.ogg', "stream")
			ddlct:setLooping(true)
			ddlct:play()
		end
	end
	audio1 = audiox
end

function sfxplay(sfx)
	if sfx == 'pageflip' then
		sfxp = love.audio.newSource('audio/sfx/pageflip.ogg')
	end
	sfxp:play()
end

function unloadbg()
	splash = nil
	bgch = nil
	bgch2 = nil
	cgch = nil
	collectgarbage()
end

function audioStop()
	if ddlct ~= nil then ddlct:stop() end
	ddlct = nil
	collectgarbage()
end

function charCheck()
	if xaload == 0 then
		myTextStartTime = love.timer.getTime()
		if setting_fmode == 0 then
			unloadAll()
		end
		loadSayori()
		loadYuri()
		loadNatsuki()
		loadMonika()
		xaload = xaload + 1
	else
		xaload = xaload + 1
	end
	
end
	
function updateSayori(a,b)
	if b == nil then b = '' end
	sa = a
	sb = b
end

function updateYuri(a,b)
	ya = a
	yb = b
end

function updateNatsuki(a,b)
	na = a
	nb = b
end

function updateMonika(a,b)
	if b == nil then b = '' end
	ma = a
	mb = b
end

function loadSayori()
	if sa=="1" then
		if s1l == nil then s1l = love.graphics.newImage('images/sayori/1l.png') end
		if s1r == nil then s1r = love.graphics.newImage('images/sayori/1r.png') end
	elseif sa=="2" then
		if s1l == nil then s1l = love.graphics.newImage('images/sayori/1l.png') end
		if s2r == nil then s2r = love.graphics.newImage('images/sayori/2r.png') end
	elseif sa=="3" then
		if s2l == nil then s2r = love.graphics.newImage('images/sayori/2l.png') end
		if s1r == nil then s1r = love.graphics.newImage('images/sayori/1r.png') end
	elseif sa=="4" then
		if s2l == nil then s2l = love.graphics.newImage('images/sayori/2l.png') end
		if s2r == nil then s2r = love.graphics.newImage('images/sayori/2r.png') end
		
	elseif sa=="1b" then
		if s1bl == nil then s1bl = love.graphics.newImage('images/sayori/1bl.png') end
		if s1br == nil then s1br = love.graphics.newImage('images/sayori/1br.png') end
	elseif sa=="2b" then
		if s1bl == nil then s1bl = love.graphics.newImage('images/sayori/1bl.png') end
		if s2br == nil then s2br = love.graphics.newImage('images/sayori/2br.png') end
	elseif sa=="3b" then
		if s2bl == nil then s2br = love.graphics.newImage('images/sayori/2bl.png') end
		if s1br == nil then s1br = love.graphics.newImage('images/sayori/1br.png') end
	elseif sa=="4b" then
		if s2bl == nil then s2bl = love.graphics.newImage('images/sayori/2bl.png') end
		if s2br == nil then s2br = love.graphics.newImage('images/sayori/2br.png') end
		
	elseif sa=="5a" then
		if s3a == nil then s3a = love.graphics.newImage('images/sayori/3a.png') end
	elseif sa=="5b" then
		if s3b == nil then s3b = love.graphics.newImage('images/sayori/3b.png') end
	elseif sa=="5c" then
		if s3c == nil then s3c = love.graphics.newImage('images/sayori/3c.png') end 
	elseif sa=="5d" then
		if s3d == nil then s3d = love.graphics.newImage('images/sayori/3d.png') end
	elseif sa=="sayori" then
		if saf == nil then saf = love.graphics.newImage('images/sayori/sayori.png') end
	end

	if sb=="" then
	elseif sb=="a" then
		if s_a == nil then s_a = love.graphics.newImage('images/sayori/a.png') end
	elseif sb=="b" then
		if s_b == nil then s_b = love.graphics.newImage('images/sayori/b.png') end
	elseif sb=="c" then
		if s_c == nil then s_c = love.graphics.newImage('images/sayori/c.png') end
	elseif sb=="d" then
		if s_d == nil then s_d = love.graphics.newImage('images/sayori/d.png') end
	elseif sb=="e" then
		if s_e == nil then s_e = love.graphics.newImage('images/sayori/e.png') end
	elseif sb=="f" then
		if s_f == nil then s_f = love.graphics.newImage('images/sayori/f.png') end
	elseif sb=="g" then
		if s_g == nil then s_g = love.graphics.newImage('images/sayori/g.png') end
	elseif sb=="h" then
		if s_h == nil then s_h = love.graphics.newImage('images/sayori/h.png') end
	elseif sb=="i" then
		if s_i == nil then s_i = love.graphics.newImage('images/sayori/i.png') end
	elseif sb=="j" then
		if s_j == nil then s_j = love.graphics.newImage('images/sayori/j.png') end
	elseif sb=="k" then
		if s_k == nil then s_k = love.graphics.newImage('images/sayori/k.png') end
	elseif sb=="l" then
		if s_l == nil then s_l = love.graphics.newImage('images/sayori/l.png') end
	elseif sb=="m" then
		if s_m == nil then s_m = love.graphics.newImage('images/sayori/m.png') end
	elseif sb=="n" then
		if s_n == nil then s_n = love.graphics.newImage('images/sayori/n.png') end
	elseif sb=="o" then
		if s_o == nil then s_o = love.graphics.newImage('images/sayori/o.png') end
	elseif sb=="p" then
		if s_p == nil then s_p = love.graphics.newImage('images/sayori/p.png') end
	elseif sb=="q" then
		if s_q == nil then s_q = love.graphics.newImage('images/sayori/q.png') end
	elseif sb=="r" then
		if s_r == nil then s_r = love.graphics.newImage('images/sayori/r.png') end
	elseif sb=="s" then
		if s_s == nil then s_s = love.graphics.newImage('images/sayori/s.png') end
	elseif sb=="t" then
		if s_t == nil then s_s = love.graphics.newImage('images/sayori/t.png') end
	elseif sb=="u" then
		if s_u == nil then s_u = love.graphics.newImage('images/sayori/u.png') end
	elseif sb=="v" then
		if s_v == nil then s_v = love.graphics.newImage('images/sayori/v.png') end
	elseif sb=="w" then
		if s_w == nil then s_w = love.graphics.newImage('images/sayori/w.png') end
	elseif sb=="x" then
		if s_x == nil then s_x = love.graphics.newImage('images/sayori/x.png') end
	elseif sb=="y" then
		if s_y == nil then s_y = love.graphics.newImage('images/sayori/y.png') end
	end
end

function unloadSayori()
	s_a = nil
	s_b = nil
	s_c = nil
	s_d = nil
	s_e = nil
	s_f = nil
	s_g = nil
	s_h = nil
	s_i = nil
	s_j = nil
	s_k = nil
	s_l = nil
	s_m = nil
	s_n = nil
	s_o = nil
	s_p = nil
	s_q = nil
	s_r = nil
	s_s = nil
	s_u = nil
	s_w = nil
	s_x = nil
	s_y = nil
	saf = nil
end

function loadYuri()	
	if ya=="1" then
		if y1l == nil then y1l = love.graphics.newImage('images/yuri/1l.png') end
		if y1r == nil then y1r = love.graphics.newImage('images/yuri/1r.png') end
	elseif ya=="2" then
		if y1l == nil then y1l = love.graphics.newImage('images/yuri/1l.png') end
		if y2r == nil then y2r = love.graphics.newImage('images/yuri/2r.png') end
	elseif ya=="3" then
		if y2l == nil then y2l = love.graphics.newImage('images/yuri/2l.png') end
		if y2r == nil then y2r = love.graphics.newImage('images/yuri/2r.png') end
	
	elseif ya=="1b" then
		if y1bl == nil then y1bl = love.graphics.newImage('images/yuri/1bl.png') end
		if y1br == nil then y1br = love.graphics.newImage('images/yuri/1br.png') end
	elseif ya=="2b" then
		if y1bl == nil then y1bl = love.graphics.newImage('images/yuri/1bl.png') end
		if y2br == nil then y2br = love.graphics.newImage('images/yuri/2br.png') end
	elseif ya=="3b" then
		if y2bl == nil then y2bl = love.graphics.newImage('images/yuri/2bl.png') end
		if y2br == nil then y2br = love.graphics.newImage('images/yuri/2br.png') end
	
	elseif ya=="4" then
		if y3_ == nil then y3_ = love.graphics.newImage('images/yuri/3.png') end
	elseif ya=="4b" then
		if y3b == nil then y3b = love.graphics.newImage('images/yuri/3b.png') end
	elseif ya=="yuri" then
		if yaf == nil then yaf = love.graphics.newImage('images/yuri/yuri.png') end 
	end
		
	if yb=="" then
	elseif yb=="a" then
		if y_a == nil then y_a = love.graphics.newImage('images/yuri/a.png') end
	elseif yb=="a2" then
		if ya2 == nil then ya2 = love.graphics.newImage('images/yuri/a2.png') end
	elseif yb=="b" then
		if y_b == nil then y_b = love.graphics.newImage('images/yuri/b.png') end
	elseif yb=="b2" then
		if yb2 == nil then yb2 = love.graphics.newImage('images/yuri/b2.png') end
	elseif yb=="c" then
		if y_c == nil then y_c = love.graphics.newImage('images/yuri/c.png') end
	elseif yb=="c2" then
		if yb2 == nil then yb2 = love.graphics.newImage('images/yuri/c2.png') end
	elseif yb=="d" then
		if y_d == nil then y_d = love.graphics.newImage('images/yuri/d.png') end
	elseif yb=="d2" then
		if yd2 == nil then yd2 = love.graphics.newImage('images/yuri/d2.png') end
	elseif yb=="e" then
		if y_e == nil then y_e = love.graphics.newImage('images/yuri/e.png') end
	elseif yb=="f" then
		if y_f == nil then y_f = love.graphics.newImage('images/yuri/f.png') end
	elseif yb=="g" then
		if y_g == nil then y_g = love.graphics.newImage('images/yuri/g.png') end
	elseif yb=="h" then
		if y_h == nil then y_h = love.graphics.newImage('images/yuri/h.png') end
	elseif yb=="i" then
		if y_i == nil then y_i = love.graphics.newImage('images/yuri/i.png') end
	elseif yb=="j" then
		if y_j == nil then y_j = love.graphics.newImage('images/yuri/j.png') end
	elseif yb=="k" then 
		if y_k == nil then y_k = love.graphics.newImage('images/yuri/k.png') end
	elseif yb=="l" then
		if y_l == nil then y_l = love.graphics.newImage('images/yuri/l.png') end
	elseif yb=="m" then
		if y_m == nil then y_m = love.graphics.newImage('images/yuri/m.png') end
	elseif yb=="n" then
		if y_n == nil then y_n = love.graphics.newImage('images/yuri/n.png') end
	elseif yb=="o" then
		if y_o == nil then y_o = love.graphics.newImage('images/yuri/o.png') end
	elseif yb=="p" then
		if y_p == nil then y_p = love.graphics.newImage('images/yuri/p.png') end
	elseif yb=="q" then
		if y_q == nil then y_q = love.graphics.newImage('images/yuri/q.png') end
	elseif yb=="r" then
		if y_r == nil then y_r = love.graphics.newImage('images/yuri/r.png') end
	elseif yb=="s" then
		if y_s == nil then y_s = love.graphics.newImage('images/yuri/s.png') end
	elseif yb=="t" then
		if y_t == nil then y_t = love.graphics.newImage('images/yuri/t.png') end
	elseif yb=="u" then
		if y_u == nil then y_u = love.graphics.newImage('images/yuri/u.png') end
	elseif yb=="v" then
		if y_v == nil then y_v = love.graphics.newImage('images/yuri/v.png') end
	elseif yb=="w" then
		if y_w == nil then y_w = love.graphics.newImage('images/yuri/w.png') end
	elseif yb=="y1" then
		if yy1 == nil then yy1 = love.graphics.newImage('images/yuri/y1.png') end
	elseif yb=="y2" then
		if yy2 == nil then yy2 = love.graphics.newImage('images/yuri/y2.png') end
	elseif yb=="y3" then
		if yy3 == nil then yy3 = love.graphics.newImage('images/yuri/y3.png') end
	elseif yb=="y4" then
		if yy4 == nil then yy4 = love.graphics.newImage('images/yuri/y4.png') end
	elseif yb=="y5" then
		if yy5 == nil then yy5 = love.graphics.newImage('images/yuri/y5.png') end
	elseif yb=="y6" then
		if yy6 == nil then yy6 = love.graphics.newImage('images/yuri/y6.png') end
	end
end

function unloadYuri()	
	y_a = nil
	ya2 = nil
	y_b = nil
	yb2 = nil
	y_c = nil
	yb2 = nil
	y_d = nil
	yd2 = nil
	y_e = nil
	ye2 = nil
	y_f = nil
	y_g = nil
	y_h = nil
	y_i = nil
	y_j = nil
	y_k = nil
	y_l = nil
	y_m = nil
	y_n = nil
	y_o = nil
	y_p = nil
	y_q = nil
	y_r = nil
	y_s = nil
	y_t = nil
	y_u = nil
	y_v = nil
	y_w = nil
	yy6 = nil
	yaf = nil
end

function loadNatsuki()
	if nb=="a" then
		if n_a == nil then n_a = love.graphics.newImage('images/natsuki/a.png') end
	elseif nb=="b" then
		if n_b == nil then n_b = love.graphics.newImage('images/natsuki/b.png') end
	elseif nb=="c" then
		if n_c == nil then n_c = love.graphics.newImage('images/natsuki/c.png') end
	elseif nb=="d" then
		if n_d == nil then n_d = love.graphics.newImage('images/natsuki/d.png') end
	elseif nb=="e" then
		if n_e == nil then n_e = love.graphics.newImage('images/natsuki/e.png') end
	elseif nb=="f" then
		if n_f == nil then n_f = love.graphics.newImage('images/natsuki/f.png') end
	elseif nb=="g" then
		if n_g == nil then n_g = love.graphics.newImage('images/natsuki/g.png') end
	elseif nb=="h" then
		if n_h == nil then n_h = love.graphics.newImage('images/natsuki/h.png') end
	elseif nb=="i" then
		if n_i == nil then n_i = love.graphics.newImage('images/natsuki/i.png') end
	elseif nb=="j" then
		if n_j == nil then n_j = love.graphics.newImage('images/natsuki/j.png') end
	elseif nb=="k" then
		if n_k == nil then n_k = love.graphics.newImage('images/natsuki/k.png') end
	elseif nb=="l" then
		if n_l == nil then n_l = love.graphics.newImage('images/natsuki/l.png') end
	elseif nb=="m" then
		if n_m == nil then n_m = love.graphics.newImage('images/natsuki/m.png') end
	elseif nb=="n" then
		if n_n == nil then n_n = love.graphics.newImage('images/natsuki/n.png') end
	elseif nb=="o" then
		if n_o == nil then n_o = love.graphics.newImage('images/natsuki/o.png') end
	elseif nb=="p" then
		if n_p == nil then n_p = love.graphics.newImage('images/natsuki/p.png') end
	elseif nb=="q" then
		if n_q == nil then n_q = love.graphics.newImage('images/natsuki/q.png') end
	elseif nb=="r" then
		if n_r == nil then n_r = love.graphics.newImage('images/natsuki/r.png') end
	elseif nb=="s" then
		if n_s == nil then n_s = love.graphics.newImage('images/natsuki/s.png') end
	elseif nb=="t" then
		if n_t == nil then n_t = love.graphics.newImage('images/natsuki/t.png') end
	elseif nb=="u" then
		if n_u == nil then n_u = love.graphics.newImage('images/natsuki/u.png') end
	elseif nb=="v" then
		if n_v == nil then n_v = love.graphics.newImage('images/natsuki/v.png') end
	elseif nb=="w" then
		if n_w == nil then n_w = love.graphics.newImage('images/natsuki/w.png') end
	elseif nb=="x" then
		if n_x == nil then n_x = love.graphics.newImage('images/natsuki/x.png') end
	elseif nb=="y" then
		if n_y == nil then n_y = love.graphics.newImage('images/natsuki/y.png') end
	elseif nb=="z" then
		if n_z == nil then n_z = love.graphics.newImage('images/natsuki/z.png') end

	elseif nb=="1t" then
		if n1t == nil then n1t = love.graphics.newImage('images/natsuki/1t.png') end
	elseif nb=="2bt" then
		if n2bt == nil then n2bt = love.graphics.newImage('images/natsuki/2bt.png') end
	elseif nb=="2a" then
		if n2bta == nil then n2bta = love.graphics.newImage('images/natsuki/2bta.png') end
	elseif nb=="2b" then
		if n2btb == nil then n2btb = love.graphics.newImage('images/natsuki/2btb.png') end
	elseif nb=="2c" then
		if n2btc == nil then n2btc = love.graphics.newImage('images/natsuki/2btc.png') end
	elseif nb=="2d" then
		if n2btd == nil then n2btd = love.graphics.newImage('images/natsuki/2btd.png') end
	elseif nb=="2e" then
		if n2bte == nil then n2bte = love.graphics.newImage('images/natsuki/2bte.png') end
	elseif nb=="2f" then
		if n2btf == nil then n2btf = love.graphics.newImage('images/natsuki/2btf.png') end
	elseif nb=="2g" then
		if n2btg == nil then n2btg = love.graphics.newImage('images/natsuki/2btg.png') end
	elseif nb=="2h" then
		if n2bth == nil then n2bth = love.graphics.newImage('images/natsuki/2bth.png') end
	elseif nb=="2i" then
		if n2bti == nil then n2bti = love.graphics.newImage('images/natsuki/2bti.png') end
	end
	
	if na=="1" then
		if n1l == nil then n1l = love.graphics.newImage('images/natsuki/1l.png') end
		if n1r == nil then n1r = love.graphics.newImage('images/natsuki/1r.png') end
	elseif na=="2" then
		if n1l == nil then n1l = love.graphics.newImage('images/natsuki/1l.png') end
		if n2r == nil then n2r = love.graphics.newImage('images/natsuki/2r.png') end
	elseif na=="3" then
		if n2l == nil then n2l = love.graphics.newImage('images/natsuki/2l.png') end
		if n1r == nil then n1r = love.graphics.newImage('images/natsuki/1r.png') end
	elseif na=="4" then
		if n2l == nil then n2l = love.graphics.newImage('images/natsuki/2l.png') end
		if n2r == nil then n2r = love.graphics.newImage('images/natsuki/2r.png') end
	
	elseif na=="1b" then
		if n1bl == nil then n1bl = love.graphics.newImage('images/natsuki/1bl.png') end
		if n1br == nil then n1br = love.graphics.newImage('images/natsuki/1br.png') end
	elseif na=="2b" then
		if n1bl == nil then n1bl = love.graphics.newImage('images/natsuki/1bl.png') end
		if n2br == nil then n2br = love.graphics.newImage('images/natsuki/2br.png') end
	elseif na=="3b" then
		if n2bl == nil then n2bl = love.graphics.newImage('images/natsuki/2bl.png') end
		if n1br == nil then n1br = love.graphics.newImage('images/natsuki/1br.png') end
	elseif na=="4b" then
		if n2bl == nil then n2bl = love.graphics.newImage('images/natsuki/2bl.png') end
		if n2br == nil then n2br = love.graphics.newImage('images/natsuki/2br.png') end
	
	elseif na=="5" then
		if n3_ == nil then n3_ = love.graphics.newImage('images/natsuki/3.png') end
	elseif na=="5b" then
		if n3b == nil then n3b = love.graphics.newImage('images/natsuki/3b.png') end
	elseif na=="natsuki" then
		if naf == nil then naf = love.graphics.newImage('images/natsuki/natsuki.png') end 
	elseif na=="natsuki2" then
		if nbf == nil then nbf = love.graphics.newImage('images/natsuki/natsuki2.png') end 
	
	end
end

function unloadNatsuki()
	n_a = nil
	n_b = nil
	n_c = nil
	n_d = nil
	n_e = nil
	n_f = nil
	n_g = nil
	n_h = nil
	n_i = nil
	n_j = nil
	n_k = nil
	n_l = nil
	n_m = nil
	n_n = nil
	n_q = nil
	n_r = nil
	n_s = nil
	n_t = nil
	n_u = nil
	n_v = nil
	n_w = nil
	n_x = nil
	n_y = nil
	n_z = nil
	naf = nil
end
	
function loadMonika()
	if ma=="1" then
		if m1l == nil then m1l = love.graphics.newImage('images/monika/1l.png') end
		if m1r == nil then m1r = love.graphics.newImage('images/monika/1r.png') end
	elseif ma=="2" then
		if m1l == nil then m1l = love.graphics.newImage('images/monika/1l.png') end
		if m2r == nil then m2r = love.graphics.newImage('images/monika/2r.png') end
	elseif ma=="3" then
		if m2l == nil then m2l = love.graphics.newImage('images/monika/2l.png') end
		if m1r == nil then m1r = love.graphics.newImage('images/monika/1r.png') end
	elseif ma=="4" then
		if m2l == nil then m2l = love.graphics.newImage('images/monika/2l.png') end
		if m2r == nil then m2r = love.graphics.newImage('images/monika/2r.png') end

	elseif ma=="5a" then
		if m3a == nil then m3a = love.graphics.newImage('images/monika/3a.png') end
	elseif ma=="5b" then
		if m3b == nil then m3b = love.graphics.newImage('images/monika/3b.png') end
	end
	
	if mb=="" then
	elseif mb=="a" then
		if m_a == nil then m_a = love.graphics.newImage('images/monika/a.png') end
	elseif mb=="b" then
		if m_b == nil then m_b = love.graphics.newImage('images/monika/b.png') end
	elseif mb=="c" then
		if m_c == nil then m_c = love.graphics.newImage('images/monika/c.png') end
	elseif mb=="d" then
		if m_d == nil then m_d = love.graphics.newImage('images/monika/d.png') end
	elseif mb=="e" then
		if m_e == nil then m_e = love.graphics.newImage('images/monika/e.png') end
	elseif mb=="f" then
		if m_f == nil then m_f = love.graphics.newImage('images/monika/f.png') end
	elseif mb=="g" then
		if m_g == nil then m_g = love.graphics.newImage('images/monika/g.png') end
	elseif mb=="h" then
		if m_h == nil then m_h = love.graphics.newImage('images/monika/h.png') end
	elseif mb=="i" then
		if m_i == nil then m_i = love.graphics.newImage('images/monika/i.png') end
	elseif mb=="j" then
		if m_j == nil then m_j = love.graphics.newImage('images/monika/j.png') end
	elseif mb=="k" then
		if m_k == nil then m_k = love.graphics.newImage('images/monika/k.png') end
	elseif mb=="l" then
		if m_l == nil then m_l = love.graphics.newImage('images/monika/l.png') end
	elseif mb=="m" then
		if m_m == nil then m_m = love.graphics.newImage('images/monika/m.png') end
	elseif mb=="n" then
		if m_n == nil then m_n = love.graphics.newImage('images/monika/n.png') end
	elseif mb=="o" then
		if m_o == nil then m_o = love.graphics.newImage('images/monika/o.png') end
	elseif mb=="p" then
		if m_p == nil then m_p = love.graphics.newImage('images/monika/p.png') end
	elseif mb=="q" then
		if m_q == nil then m_q = love.graphics.newImage('images/monika/q.png') end
	elseif mb=="r" then
		if m_r == nil then m_r = love.graphics.newImage('images/monika/r.png') end
	end
end

function unloadMonika()
	m_a = nil
	m_b = nil
	m_c = nil
	m_d = nil
	m_e = nil
	m_f = nil
	m_g = nil
	m_h = nil
	m_i = nil
	m_j = nil
	m_k = nil
	m_l = nil
	m_m = nil
	m_n = nil
	m_o = nil
	m_p = nil
	m_q = nil
	m_r = nil
	collectgarbage()
end

function unloadAll()
	unloadSayori()
	unloadYuri()
	unloadNatsuki()
	unloadMonika()
end