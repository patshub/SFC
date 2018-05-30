<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section class="bg lightblue-img">
  <div class="container">
    <div class="mid-col">
      <h2>What is CLP?</h2>
      <p>The Christian Life Program (CLP) is an integrated program that lead participants into a renewed understanding of God’s call to them as Christians. </p>
      <a href="#register-clp" class="btn white hover-white">Register</a>
    </div>
  </div>
</section>

<section id="clp-sessions" class="bg white">
  <div class="container">
    <div class="mid-col">
      <h2>12-Week Program</h2>
      <p>Each CLP has a total of 12 separate sessions, usually held once a week. Each session consists of three basic ingredients: teaching, group discussion, and fellowship.</p>
    </div>
    <div class="columns">
      <div class="col-4">
        <div class="col">
          <div class="info">
            <h3><span class="subtitle">Module 1</span>The Basic Truths About Christianity</h3>
            <ol>
              <li>God's Love</li>
              <li>Who is Jesus Christ?</li>
              <li>What it Means to be a Christian</li>
              <li>Repentance and Faith</li>
            </ol>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="col">
          <div class="info">
            <h3><span class="subtitle">Module 2</span>The Authentic Christian Life</h3>
            <ol start="5">
              <li>The Christian Ideal: Loving God</li>
              <li>Loving Your Neighbor</li>
              <li>The Christian Family</li>
              <li>Life in the Holy Spirit</li>
            </ol>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="col">
          <div class="info">
            <h3><span class="subtitle">Module 3</span>Living a Spirit-Filled Christian Life</h3>
            <ol start="9">
              <li>Receiving the Power of the Holy Spirit</li>
              <li>Growing in the Spirit</li>
              <li>The Life and Mission of CFC Singles for Christ</li>
              <li>Transformation in Christ</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>

<div class="standalone-img">
</div>

<section class="faq-section bg grey">
  <div class="container">
    <h2 class="section-title">Frequently-Asked Questions</h2>
    <div class="col-6">
      <div class="col">
        <div class="faq-item">
          <h4>Who can join and become a member of SFC?</h4>
          <p>Single Christian men and women from 21 years old to 40 years old have to go through a Christian Life Program (CLP) to become a member.</p>
        </div>
        <div class="faq-item">
          <h4>What should I do if I am interested to attend the CLP here in the Los Angeles area?</h4>
          <p>You can email us your name and contact number below and we will inform you on our next CLP soon.</p>
        </div>
        <div class="faq-item">
          <h4>Do I have to pay for anything?</h4>
          <p>There are no fees or any monetary expenses required from participants. The only investment required is time and openness.</p>
        </div>
      </div>
    </div>
    <div class="col-6">
      <div class="col">
        <div class="faq-item">
          <h4>I am already an SFC member from another area, but I just transferred here in the Los Angeles area. How do I get to join SFC?</h4>
          <p>We would be happy to include you in the chapter, Send us an email and contact number below and we'll contact you. Or send them directly to sfcsocalwestwebsite@gmail.com.</p>
        </div>
        <div class="faq-item">
          <h4>Who can join and become a member of SFC?</h4>
          <p>Single Christian men and women from 21 years old to 40 years old have to go through a Christian Life Program (CLP) to become a member.</p>
        </div>
        <div class="faq-item">
          <h4>Who can join and become a member of SFC?</h4>
          <p>Single Christian men and women from 21 years old to 40 years old have to go through a Christian Life Program (CLP) to become a member.</p>
        </div>
      </div>
    </div>

  </div>
</section>

<section id="register-clp" class="bg blue-img">
  <div class="container">
    <div class="mid-col">
      <h2>Register</h2>
      <p>The Christian Life Program (CLP) is an integrated program that lead participants into a renewed understanding of God’s call to them as Christians. </p>
      <?php echo do_shortcode('[contact-form-7 id="61" title="CLP Entries"]'); ?>
    </div>
  </div>
</section>


<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
