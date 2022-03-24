<footer id="footer" class="footer">
    <%-- <div class="footer-newsletter">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <h4>Our Newsletter</h4>
                    <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                </div>
                <div class="col-lg-6 ">
                    <form action="" method="post">
                        <input type="email" name="email"><input type="submit" value="Subscribe">
                    </form>
                </div>
            </div>
        </div>

    </div> --%>
	<div class="footer-top">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-5 col-md-12 footer-info">
                    <a href="index.html" class="logo d-flex align-items-center">
                        <img src="$ThemeDir/img/kuzhalosai.jpg" alt="Kuzhalosai trust tamilnadu">
                
                        <span>$SiteConfig.Title</span>
                    </a>
                    <% with $SiteConfig %>
                        <% if $FooterContent %><p>$FooterContent</p> <% end_if %>
                    <div class="social-links mt-3">
                    <% if $TwitterLink %><a href="#" class="twitter"><i class="bi bi-twitter"></i></a><% end_if %>
                    <% if $FacebookLink %><a href="#" class="facebook"><i class="bi bi-facebook"></i></a><% end_if %>
                    <% if $InstagramLink %><a href="#" class="instagram"><i class="bi bi-instagram"></i></a><% end_if %>
                    <% if $LinkinLinkt %><a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a><% end_if %>
                    <% if $YouTubeLink %><a href="#" class="linkedin"><i class="bi bi-youtube"></i></a><% end_if %>
                    </div>
                <% end_with %>
                </div>

                <div class="col-lg-2 col-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <% loop $Menu(1) %>
                        <li class="$LinkingMode bi bi-chevron-right"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                    <% end_loop %>

                    </ul>
                </div>

                

                <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
                    <h4>Contact Us</h4>
                    <% with $SiteConfig %>
                    <p>
                        $Address<br>
                       <% if $PhoneNumber %> <strong>Phone:</strong> $PhoneNumber<br><% end_if %>
                    <% if $Email %> <strong>Email:</strong> $Email<br><% end_if %>
                    </p>
                <% end_with %>

                </div>

            </div>
        </div>
    </div>
    <div class="container">
        <% with $SiteConfig %>
            $Copyright
        <% end_with %>
    </div>
</footer>
