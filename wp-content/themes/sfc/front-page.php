<?php include 'header.php'; ?>
  <?php //if (function_exists('user_submitted_posts')) user_submitted_posts(); ?>

  <section id="home-banner">

    <div class="container">
      <div class="col-3">
      </div>
      <div class="col-6">
        <img class="logo-header" src="<?php bloginfo('template_url'); ?>/assets/images/logo-header.svg"/>
      </div>
      <div class="col-3">
      </div>
      <!-- <div class="col-1">
      </div> -->
    </div>
    <div class="dimmer"></div>
  </section>

  <section id="featured-triplets">
    <div class="container">
      <div class="columns col-max">
        <div class="col-4">
          <div class="col">
            <a href="/sfc/about-us"><div class="img"></div></a>
            <div class="info">
              <h3>About SFC</h3>
              <p>It is faith in action! Kids, youth, adults, and seniors join together to walk for the poor and rally the public to support the cause.</p>
              <a href="/sfc/about-us" class="btn">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="col">
            <a href="/sfc/clp"><div class="img"></div></a>
            <div class="info">
              <h3>How to Join</h3>
              <p>It is faith in action! Kids, youth, adults, and seniors join together to walk for the poor and rally the public to support the cause.</p>
              <a href="/sfc/clp" class="btn">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="col">
            <a href="/sfc/"><div class="img"></div></a>
            <div class="info">
              <h3>What to Expect</h3>
              <p>It is faith in action! Kids, youth, adults, and seniors join together to walk for the poor and rally the public to support the cause.</p>
              <a href="/sfc/" class="btn">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="featured-contents">
    <div class="container">
      <div class="headline">
        <h2 class=" ">
          <span class="subtitle">WHAT WE DO</span>
          Deepen Your Relationship With God</h2>
        <p>To this end, CFC SFC has on-going formation programs, household meetings, recollections, retreats, teachings, forums, and other activities designed to deepen your relationship with the Lord and with others in the community.</p>
      </div>
      <div class="columns col-max">
        <div class="col-3">
          <div class="col">
            <div class="img"></div>
            <div class="info">
              <h4>Households</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elit.</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="col">
            <div class="img"></div>
            <div class="info">
              <h4>Teaching Nights</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elit.</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="col">
            <div class="img"></div>
            <div class="info">
              <h4>Retreats</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elit.</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="col">
            <div class="img"></div>
            <div class="info">
              <h4>Conferences</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elit.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="word-message">
    <div class="">
      <div class="word-art" style="width: 100%; height: 400px;" data-wordart-src="//cdn.wordart.com/json/haqwkgk45wc4" data-wordart-show-attribution></div>
    </div>
  </section>
  <section id="clp-home">
    <div class="container">
      <div class="mid-col">
        <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-black-cross.svg"/>
        <h2 class=" align-center"><span class="subtitle">JOIN US</span>Christian Life Program</h2>
        <p>The Christian Life Program (CLP), is an integrated program that lead participants into a renewed understanding of God’s call to them as Christians.</p>
        <a href="/sfc/clp" class="btn">Learn More</a>
      </div>
    </div>
  </section>

  <section id="ancop-home">
    <div class="container">
      <div class="col-6">
      </div>
      <div class="col-6">
        <div class="col">
          <h2 class=" "><span class="subtitle">HELP THE POOR</span>Answering the Cry of the Poor</h2>
          <p>ANCOP is an acronym which stands for Answering the Cry of the Poor. ANCOP USA shares Christ’s love among the poor, uplifts their lives, restores their dignity as children of God, and transforms communities.</p>
          <a href="/sfc/ancop" class="btn">Learn More</a>
        </div>
      </div>
    </div>
  </section>

  <section id="prayers-home" class="bg">
    <div class="container">
      <div class="mid-col">
        <h2 class=" "><span class="subtitle">OFFER YOUR PRAYERS</span>Prayer Intentions</h2>
        <p>The Christian Life Program (CLP) is an integrated program that lead participants into a renewed understanding of God’s call to them as Christians. </p>
        <a href="/sfc/prayers" class="btn white hover-white">Make a Prayer Intention</a>
      </div>
    </div>
    <div class="dimmer"></div>
  </section>

  <section id="articles-home" class="bg grey">
    <div class="container">
      <h2 class="section-title"><strong>Latest Articles</strong></h2>
      <?php
      $args = array(
        'posts_per_page' => 4,
        'post_type'   => 'articles'
      );
      $articles = new WP_Query( $args );
      if ( $articles->have_posts() ) { ?>
        <div class="columns col-max articles">
          <?php	while ( $articles->have_posts() ) { $articles->the_post(); ?>
          <div class="col-3">
            <div class="col">
              <div class="article-item">
                <?php if ( has_post_thumbnail() ) : ?>
                  <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><div class="article-img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"></div></a>
                <?php endif; ?>
                <div class="article-info">
                  <a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
                  <span class="post-date excerpt"><?php echo get_the_date('F j, Y'); ?></span>
                  <div class="excerpt"><?php echo the_excerpt(5); ?></div>
                  <a href="<?php the_permalink(); ?>" class="btn secondary">Read Article</a>
                </div>
              </div>
            </div>
          </div>
          <?php } wp_reset_postdata(); ?>
        </div>
      <?php } else { // no posts found
      } ?>
    </div>
  </section>
<?php include 'footer.php'; ?>
