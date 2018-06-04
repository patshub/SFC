<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
  <style>.dimmer{opacity: .6;}</style>
<section class="bg white">
  <div class="container">
    <h2>What is SFC?</h2>
    <div class="col-6">
      <div class="col">
        <p>
          CFC Singles for Christ (SFC) is one of the family ministries of Couples for Christ (CFC). It was founded to cater to the needs of single men and women from 21 to 40 years of age. “Single” refers to anyone within that age group who is free from any legal impediments to marriage. The pastoral care offered by the ministry, though, is not limited to those who are called for marriage, but includes as well those who may be considering either single blessedness or religious vocation as a state of life.
          <br/><br/>
          CFC-SFC was established in April 1993, when a group of about 40 single men and women, mostly from the Visayas Islands in the Philippines, met for a 3-day workshop in Kalibo, Aklan to talk about forming a ministry for single men and women under the leadership of CFC.
        </p>
      </div>
    </div>
    <div class="col-6">
      <div class="col">
        <p>It initially aimed to provide a Christian support environment for single men and women who want to follow Christ. However, SFC has taken a more pro-active stance with regard to providing that environment, by making sure that it brings Christ to wherever the singles are — the corporate setting, campuses, government institutions, even in prison and developing communities. This is in alignment with CFC`s thrust of rapid, massive and global evangelization.</p>
      </div>
    </div>
  </div>
</section>

<section class="img-group">
  <div class="container">
    <div class="columns">
      <div class="col-6">
        <div class="col">
          <div class="img" style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/conference.jpg');">
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="img" style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/conference-2.jpg');">
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="img" style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/conference-3.jpg');">
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="img" style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/conference-4.jpg');">
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- <div class="standalone-img" style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/conference.jpg');"></div> -->

<section id="mission-vision" class="bg lightblue-img">
  <div class="container">
    <div class="mid-col">
      <h2 class="section-title">
        <span class="subtitle vision">Vision</span>
        Every single man and woman all over the world experiencing Christ
      </h2>
      <p>Singles for Christ is the next generation of Couples for Christ, empowered by the Holy Spirit to journey and witness with single men and women in their discovery and pursuit of vocations and the fullness of the mission towards building a Christ-centered society.</p>
      <br/>
      <h2 class="section-title">
        <span class="subtitle mission">Mission</span>
      </h2>
      <h3>Building the Church of the Home. Building the Church of the Poor.</h3>
    </div>
  </div>
</section>

<section class="bg grey ">
  <div class="container">
    <div class="col-6">
      <div class="col">
        <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-cfc.svg" class="cfc-logo" />
        <div class="cfc-info">
          <h2>Couples for Christ</h2>
          <p>CFC Couple Coordinators, together with full-time Pastoral Workers, are available to assist our family and social ministries, helping younger members bring forth their gifts, talents, and passions to share in our CFC Vision of Families in the Holy Spirit Renewing the Face of the Earth, Bringing Glad Tidings to the Poor.</p>
        </div>
      </div>
    </div>
    <div class="col-6">
      <div class="col">
        <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-solo-black.svg" class="cfc-logo" />
        <div class="cfc-info">
          <h2>SoCAL Chapters</h2>
          <p>In Southern California, there are six chapters based on the cities that they cover. We are the SouthBay Chapter and cover the cities between Redondo Beach, CA and La Mirada, CA. Below are the information of other SoCal Chapters.</p>
        </div>

      </div>
    </div>
  </div>
</section>

<section id="join-us" class="bg blue-img dark">
  <div class="container">
    <div class="mid-col">
      <div class="headline">
        <h2><span class="subtitle">Join Us</span>Christian Life Program</h2>
        <p>The Christian Life Program (CLP), is an integrated program that lead participants into a renewed understanding of God’s call to them as Christians.</p>
        <a href="/sfc/clp#register-clp" class="btn white hover-white inline">Register</a> <a href="/sfc/clp" class="btn hover-white inline">Learn More</a>
      </div>
    </div>
  </div>
</section>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
