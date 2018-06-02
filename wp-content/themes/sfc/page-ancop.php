<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section class="bg green-img">
    <div class="container">
      <div class="col-2">
      </div>
      <div class="col-2">
        <div class="col">
          <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-ancop.svg"/>
        </div>
      </div>
      <div class="col-6">
        <h2>What is ANCOP?</h2>
        <p>ANCOP, an acronym which stands for Answering the Cry of the Poor is a Christian, Catholic non-profit organization that dedicates itself to proclaiming CHRIST, and the Christian faith, by uplifting the plight of the poor.</p>
      </div>
      <div class="col-2">
      </div>
    </div>
  </section>

  <section class="bg white">
    <div class="container">
      <div class="col-6">
        <div class="col">
          <h2>Mission</h2>
          <p>Mission to be a catalyst for human liberation, uplifting the material and spiritual welfare of the poor by empowering families and the youth through values formation and skills training for a better quality of life, and building communities of stewards for sustained development and social transformation through networking, business and cooperative development.</p>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <h2>Vision</h2>
          <p>In unity with the Catholic Church, consistent with the core values of Couples for Christ of which it is a ministry, and recognizing Christ as the center of its work, ANCOP USA will seek to renew and uplift the lives of the poor  and the marginalized, to restore their dignity as human beings and children of God, and to influence the spiritual transformation of the beneficiaries and their benefactors.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="bg grey">
    <div class="container">
      <div class="columns col-max">
        <div class="col-4">
          <div class="col">
            <a href="#"><div class="img"></div></a>
            <div class="info">
              <h3>Education</h3>
              <p>It is faith in action! Kids, youth, adults, and seniors join together to walk for the poor and rally the public to support the cause.</p>
              <a href="#" class="btn">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="col">
            <a href="#"><div class="img"></div></a>
            <div class="info">
              <h3>Community Development</h3>
              <p>Bring back the smiles in children’s faces by letting them know that there is someone who loves and cares for them.</p>
              <a href="#" class="btn">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="col">
            <a href="#"><div class="img"></div></a>
            <div class="info">
              <h3>Calamity/Disaster Response</h3>
              <p>You can help transform lives. All of our program funding relies entirely on donations. We’re thankful for your support.</p>
              <a href="#" class="btn">Donate</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="bg ancop2">
    <div class="container">
      <div class="mid-col">
        <h2>Visit their Website</h2>
        <p>For more information about ANCOP, visit their website.</p>
        <a href="http://cfcancop.org/" target="_blank" class="btn white hover-white">cfcancop.org</a>
      </div>
    </div>
  </section>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
