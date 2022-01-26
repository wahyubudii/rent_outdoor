@extends('layouts.master')
@section('content')
<section id="hero" class="d-flex align-items-center">

<div class="container">
  <div class="row">
    <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
      <h1>Sewa perlengkapan outdoor disini</h1>
      <h2>Kami menyediakan perlengkapan outdoor lengkap dan harga yang ekonomis.</h2>
      <div class="d-flex">
        <a href="#about" class="btn-get-started scrollto">Get Started</a>
      </div>
    </div>
    <div class="col-lg-6 order-1 order-lg-2 hero-img">
      <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
    </div>
  </div>
</div>

</section><!-- End Hero -->

<main id="main">

<!-- ======= Featured Services Section ======= -->
<section id="featured-services" class="featured-services">
  <div class="container">

    <div class="row">
      <div class="col-lg-4 col-md-6">
        <div class="icon-box">
          <div class="icon"><i class="bi bi-cloud-moon"></i></div>
          <h4 class="title"><a href="">Set Camping</a></h4>
          <p class="description">Paket set camping ini berisi mulai dari: carrier, matras, tenda, sleeping bag, hammock dan senter.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
        <div class="icon-box">
          <div class="icon"><i class="bi bi-eyeglasses"></i></div>
          <h4 class="title"><a href="">Set Outfit</a></h4>
          <p class="description">Paket set outfit ini berisi mulai dari: jaket, sandal, sepatu, celana, jas hujan, gaiters dan trekking pole. <b><i>(Bisa request)</i></b></p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
        <div class="icon-box">
          <div class="icon"><i class="bi bi-cart"></i></div>
          <h4 class="title"><a href="">Set Dinner</a></h4>
          <p class="description">Paket set dinner ini berisi mulai dari: kompor, gas, sendok, garpu, sumpit, piring, korek api, telur, mentega, snack, daging beef dan ayam.</p>
        </div>
      </div>
    </div>

  </div>
</section><!-- End Featured Services Section -->

<!-- ======= About Section ======= -->
<section id="about" class="about">
  <div class="container">

    <div class="row">
      <div class="col-lg-6">
        <img src="assets/img/about.png" class="img-fluid" alt="">
      </div>
      <div class="col-lg-6 pt-4 pt-lg-0 content">
        <h3><i style="color: green;">Neo Rent </i>menyediakan berbagai macam perlengkapan outdoor</h3>
        <p class="fst-italic">
          kami telah melayani berbagai macam customers dari seluruh kota di Indonesia, dan respon positif dari mereka diantaranya adalah.
        </p>
        <ul>
          <li><i class="bi bi-check-circle"></i> Perlengkapan yang disediakan sangat lengkap</li>
          <li><i class="bi bi-check-circle"></i> Selain itu juga perlengkapan yang tersedia banyak, jadi gaperlu kehabisan</li>
          <li><i class="bi bi-check-circle"></i> Harga sewa barang yang ekonomis</li>
          <li><i class="bi bi-check-circle"></i> Selain itu juga bisa request perlengkapan sesuai dengan kebutuhan</li>
          <li><i class="bi bi-check-circle"></i> Pelayanan yang ramah dan cepat</li>
        </ul>
        <p>
          <q>Sewa perlengkapan outdoor murah, di <a href="#"><b>Neo Rent</b></a> saja.</q>
        </p>
      </div>
    </div>

  </div>
</section><!-- End About Section -->

<!-- ======= Counts Section ======= -->
<section id="counts" class="counts">
  <div class="container">

    <div class="row counters">

      <div class="col-lg-3 col-6 text-center">
        <span data-purecounter-start="0" data-purecounter-end="136" data-purecounter-duration="1" class="purecounter"></span>
        <p>Total Items</p>
      </div>

      <div class="col-lg-3 col-6 text-center">
        <span data-purecounter-start="0" data-purecounter-end="351" data-purecounter-duration="1" class="purecounter"></span>
        <p>Total Transaksi</p>
      </div>

      <div class="col-lg-3 col-6 text-center">
        <span data-purecounter-start="0" data-purecounter-end="21" data-purecounter-duration="1" class="purecounter"></span>
        <p>Total Employees</p>
      </div>

      <div class="col-lg-3 col-6 text-center">
        <span data-purecounter-start="0" data-purecounter-end="9" data-purecounter-duration="1" class="purecounter"></span>
        <p>Total Partnership</p>
      </div>
    </div>
  </div>
</section><!-- End Counts Section -->

<!-- ======= Portfolio Section ======= -->
<section id="portfolio" class="portfolio">
  <div class="container">

    <div class="section-title">
      <span>Items</span>
      <h2>Items</h2>
      <p>Daftar perlengkapan yang kami sediakan</p>
    </div>

    <div class="row">
      <div class="col-lg-12 d-flex justify-content-center">
        <ul id="portfolio-flters">
          <li data-filter="*" class="filter-active">All</li>
          <li data-filter=".filter-camping">Camping</li>
          <li data-filter=".filter-outfit">Outfit</li>
          <li data-filter=".filter-dinner">Dinner  </li>
        </ul>
      </div>
    </div>

    <div class="row portfolio-container">

     @foreach($items as $item)
      <div class="col-lg-4 col-md-6 portfolio-item filter-{{$item->tags[0]["name"]}}">
        <img src="{{$item->image}}" class="img-fluid" alt="">
        <div class="portfolio-info">
          <h4>{{$item->item_name}}</h4>
          <p>{{ucwords($item->tags[0]["name"])}}</p>
          <a href="{{$item->image}} " data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="{{$item->item_name}}"><i class="bx bx-plus"></i></a>
          <!-- <a href="{{url('item/'.$item->id.'/')}}" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
          <a href="item{{$item->id}}" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
        </div>
      </div>
      @endforeach

    </div>

  </div>
</section><!-- End Portfolio Section -->

<!-- ======= Testimonials Section ======= -->
<section id="testimonials" class="testimonials section-bg">
  <div class="container">

    <div class="section-title">
      <span>Testimoni</span>
      <h2>Testimoni</h2>
      <p>Apa kata mereka yang telah menyewa perlengkapan outdoor pada <a style="color: green;" href="#"><b>Neo Rent</b></a></p>
    </div>

    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
      <div class="swiper-wrapper">

        @foreach($testimonials as $testimonial)
        <div class="swiper-slide">
          <div class="testimonial-item">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              {{$testimonial->comment}}
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
            <img src="{{$testimonial->image}}" class="testimonial-img" alt="">
            <h3>{{$testimonial->name}}</h3>
            <h4>{{$testimonial->job}}</h4>
          </div>
        </div><!-- End testimonial item -->
        @endforeach

      </div>
      <div class="swiper-pagination"></div>
    </div>

  </div>
</section><!-- End Testimonials Section -->

<!-- ======= Cta Section ======= -->
<section id="cta" class="cta">
  <div class="container">

    <div class="text-center">
      <h3>Get Started</h3>
      <p>Sewa perlengkapan outdoormu sekarang juga disini. <b>Untuk pertama kali transaksi akan mendapatkan discount sebesar 25% dari harga normal.</b>Promo ini berlaku untuk sekali saja.</p>
      <a class="cta-btn" href="#">Get Started</a>
    </div>

  </div>
</section><!-- End Cta Section -->

<!-- ======= Team Section ======= -->
<section id="team" class="team section-bg">
  <div class="container">

    <div class="section-title">
      <span>Team</span>
      <h2>Team</h2>
      <p>Berikut adalah team profile professional dari <a href=""><b>Neo Rent</b></a></p>
    </div>

    <div class="row">
      @foreach($teams as $team)
      <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
        <div class="member">
          <img src="{{$team->image}}" alt="">
          <h4>{{$team->name}}</h4>
          <span>{{$team->job}}</span>
          <p>
            {{$team->description}}
          </p>
          <div class="social">
            <a href="{{$team->github_url}}"><i class="bi bi-github"></i></a>
            <a href="{{$team->facebook_url}}"><i class="bi bi-facebook"></i></a>
            <a href="{{$team->instagram_url}}"><i class="bi bi-instagram"></i></a>
            <a href="{{$team->linkedin_url}}"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>
      </div>
      @endforeach

    </div>

  </div>
</section><!-- End Team Section -->

<!-- ======= Contact Section ======= -->
<section id="contact" class="contact">
  <div class="container">

    <div class="section-title">
      <span>Contact</span>
      <h2>Contact</h2>
      <p>Hubungi kami jika ada pertanyaan, kami melayani dengan segenap hati.</p>
    </div>

    <div class="row">

      <div class="col-lg-5 d-flex align-items-stretch">
        <div class="info">
          <div class="address">
            <i class="bi bi-geo-alt"></i>
            <h4>Lokasi:</h4>
            <p>Jalan Raya Tlogomas No. 246 Tlogomas, Babatan, Tegalgondo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144</p>
          </div>

          <div class="email">
            <i class="bi bi-envelope"></i>
            <h4>Email:</h4>
            <p>neorent@gmail.com</p>
          </div>

          <div class="phone">
            <i class="bi bi-phone"></i>
            <h4>Call:</h4>
            <p>+62 858 1639 2349</p>
          </div>

          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.752442615196!2d112.59522551536557!3d-7.920906581051718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78821e4ce13887%3A0x9f68f2e5fdaaa1f0!2sJl.%20Raya%20Tlogomas%20No.246%2C%20Babatan%2C%20Tlogomas%2C%20Kec.%20Lowokwaru%2C%20Kota%20Malang%2C%20Jawa%20Timur%2065144!5e0!3m2!1sid!2sid!4v1643085071469!5m2!1sid!2sid" width="100%" height="290px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>

      </div>

      <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
          <div class="row">
            <div class="form-group col-md-6">
              <label for="name">Nama Lengkap</label>
              <input type="text" name="name" class="form-control" id="name" required>
            </div>
            <div class="form-group col-md-6 mt-3 mt-md-0">
              <label for="name">Email</label>
              <input type="email" class="form-control" name="email" id="email" required>
            </div>
          </div>
          <div class="form-group mt-3">
            <label for="name">Subject</label>
            <input type="text" class="form-control" name="subject" id="subject" required>
          </div>
          <div class="form-group mt-3">
            <label for="name">Pesan</label>
            <textarea class="form-control" name="message" rows="10" required></textarea>
          </div>
          <div class="my-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your message has been sent. Thank you!</div>
          </div>
          <div class="text-center"><button type="submit">Send Message</button></div>
        </form>
      </div>

    </div>

  </div>
</section><!-- End Contact Section -->

</main><!-- End #main -->
@endsection