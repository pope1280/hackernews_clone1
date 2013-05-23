get '/' do
  # Look in app/views/index.erb
  @posts = Post.all
  erb :index
end

get '/submit' do
  erb :submit
end

get '/profile' do
  erb :profile
end

get '/jobs' do
  redirect 'https://www.google.com/search?gs_rn=14&gs_ri=psy-ab&tok=Bn8FLlngceGFmnB9DOyZeA&cp=7&gs_id=q&xhr=t&q=steve+jobs&bav=on.2,or.r_cp.r_qf.&bvm=bv.46865395,d.cGE&biw=950&bih=959&um=1&ie=UTF-8&hl=en&tbm=isch&source=og&sa=N&tab=wi&ei=BWqdUeqpAsXHigLu44DQCw'
end

get '/logout' do
  session.clear
  redirect '/'
end
