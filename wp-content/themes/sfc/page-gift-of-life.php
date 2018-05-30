<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section class="bg white">
  <div class="container">
    <div class="col-2">
    </div>
    <div class="col-2">
      <div class="col">
        <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-giftoflife.svg"/>
      </div>
    </div>
    <div class="col-6">
      <h2>What is the Gift of Life?</h2>
      <p>At the heart of the evangelization mission of the church is the Gospel of Life. We proclaim that all life is sacred, as disciples of Jesus Christ; it is our duty to respect, protect, love and serve every human life, from conception to natural death.</p>

      <h3>Initiatives</h3>
      <p>Aligned with and in support of CFC’s Core values of Pro‐God, Pro‐Family, Pro‐Life and Pro‐Poor and the Pastoral Plans for Pro‐Life Activities of the United States Conference of Catholic Bishops, outlined are the Gift of Life Initiatives for Couples for Christ and the Family Ministries USA.</p>
    </div>
    <div class="col-2">
    </div>
  </div>
</section>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
