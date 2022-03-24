<main id="main" class="top-pad">
    <section class="breadcrumbs">
        <div class="container">
            <ol>
                <li><a href="$BaseHref">Home</a></li>
                <li>$Breadcrumbs</li>
            </ol>
            <h2>Welome New Members</h2>
        </div>
    </section>
    <section>
        <div class="container contact member-form" data-aos="fade-up">
            <header class="section-header">
                <h2>Welcome</h2>
                <p>New Member / Volunteer form</p>
            </header>
    $Form
        </div>
    </section>
    <section id="team" class="team pt-5">
            <div class="container" data-aos="fade-up">
                <header class="section-header">
                    <h2>Team</h2>
                    <p>Our hard-working committee : 2022</p>
                </header>
                <div class="row gy-4">
                    <% loop $TeamDetails %>
                        <% include Custom/SingleTeam %>
                    <% end_loop %>
                </div>
            </div>
    </section>
</main>
