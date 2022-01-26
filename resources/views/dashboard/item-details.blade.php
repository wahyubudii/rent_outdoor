@extends('layouts.master')
@section('content')
<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Item Details</h2>
        <ol>
          <li><a href="index">Home</a></li>
          <li>Item Details</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Item Details Section ======= -->
  <section id="portfolio-details" class="portfolio-details">
    <div class="container">

      <div class="row gy-4">

        @foreach($items as $item)
        <div class="col-lg-8">
          <div class="portfolio-details-slider swiper">
            <div class="swiper-wrapper align-items-center">

              <div class="swiper-slide">
                <img src="{{$item->image}}" alt="">
              </div>

            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="portfolio-info">
            <h3>Item information</h3>
            <ul>
              <li><strong>Nama</strong>: {{$item->item_name}}</li>
              <li><strong>Tag</strong>: {{ucwords($item->tags[0]["name"])}}</li>
              <li><strong>Stock</strong>: {{$item->stock}}</li>
            </ul>
          </div>
          <div class="portfolio-description">
            <h2>Deskripsi</h2>
            <p>{{strip_tags($item->description)}}</p>
          </div>
        </div>
        @endforeach

      </div>

    </div>
  </section><!-- End Portfolio Details Section -->

</main><!-- End #main -->
@endsection