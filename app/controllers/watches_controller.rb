class WatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @watches = Watch.all
    @users = User.all
    @random_images = [
      "https://timekeeping.fr/cdn/shop/products/image_356e963a-0f3b-4223-a0f0-027c9dee3dc3_300x300.jpg?v=1647356887",
      "https://magazine.chrono24.com/cdn-cgi/image/f=auto,metadata=none,fit=cover,q=65,w=1190,h=595,dpr=2.0/2022/08/Omega-Speedmaster-6-Things-Magazin-2-1.jpg",
      "https://alheuredemilie.com/wp-content/uploads/2023/03/DSC_1447-scaled-e1679494829290.jpg",
      "https://www.realmenrealstyle.com/wp-content/uploads/2023/08/Watch-Details.jpg",
      "https://cdn.shopify.com/s/files/1/0278/9723/3501/files/44-MB_F-Brands.jpg?v=1651006810",
      "https://5.imimg.com/data5/ANDROID/Default/2021/6/XZ/SN/IN/93645587/product-jpeg-500x500.jpg",
      "https://cdn.shopify.com/s/files/1/0278/9723/3501/files/49-Richard-Mille-Brands.jpg?v=1651007465",
      "https://images.augustman.com/wp-content/uploads/sites/3/2022/10/11191124/pexels-antony-trivet-9978785.jpg",
      "https://cdn4.ethoswatches.com/the-watch-guide/wp-content/uploads/2018/10/Ethos-Watch-Awards-25-Best-Luxury-Mens-Watches-2018-Rolex-Omega-Rado-TAG-Heuer-Breitling-mens-mobile-masthead-lifestyle-optimised.jpg",
      "https://www.livemint.com/lm-img/img/2023/12/19/1600x900/luxury_watches_for_men_1702968689078_1702968694832.jpg",
      "https://www.arabianbusiness.com/cloud/2021/09/14/OIfvTJdI-audemarspiguetcagaulead_1.png"
    ]
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(params_watch)
    @watch.user_id = current_user.id
    if @watch.save
      redirect_to @watch
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @watch = Watch.find(params[:id])
  end

  private

  def params_watch
    params.require(:watch).permit(:name, :price, :brand, :model, :description, :movement_type, :gender, :photo)
  end

end
