class VideomasterindexController < ApplicationController
    
    def mostupvoted
        @videos = Video.all.order(:cached_votes_up=> :desc).paginate(:page => params[:page], :per_page => 6)
    end
    
    def alphabetical
        @videos = Video.order(title: :asc).paginate(:page => params[:page], :per_page => 6)
        @ip = request.remote_ip
        @beenhere = Beenheretracker.find_by(ipaddress: @ip)
    end
    
    def mostrecent
        @videos = Video.order(created_at: :desc).paginate(:page => params[:page], :per_page => 6)
    end
    
    def randomized
        @videos = Video.all.shuffle.paginate(:page => params[:page], :per_page => 6)
    end
    
    def getpaid
        Beenheretracker.delete_all
    end
    
    def contactus
        
    end
    
    def search
        if params[:search]
            @posts = Video.search(params[:search])
        else
            @tempposts = Video.order(title: :asc)
            @posts = []
            @tempposts.each do |x|
                boo = false
                @posts.each do |y|
                    if x.title == y.title
                        boo = true
                    end
                end
                if boo == false
                    @posts.push(x)        
                end
            end
        end
    end
    
end
