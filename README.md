dopresskit
==========

presskit() - spend time making games, not press.

Modifications
=============
This fork of the original allows developers to generate a presskit() site locally on their machine and host it on Amazon S3 whereas the original required an FTP site.

**How to generate the static files for your presskit site:**

1. Clone out this repository onto your local machine.
2. [Install Vagrant](https://docs.vagrantup.com/v2/installation/index.html). We'll be using Vagrant to create a virtual development environment to configure our presskit site in.
3. In the root directory of this repository, run `vagrant init`.
4. Then, run `vagrant up`.
5. Navigate to localhost:8080 and you should see the beginnings of your presskit site.
6. Follow the instructions on the site. When modifying or adding files to your site, do so in your local presskit repository. [Vagrant will automatically sync these files to its development environment.](https://docs.vagrantup.com/v2/getting-started/synced_folders.html)
7. When you've finished your site, SSH into the Vagrant environment by entering `vagrant ssh`.
8. Navigate to your site's directory by entering `cd /vagrant`.
9. Run the `generate-static-site.sh` script to generate your site's static files. These will be saved in a folder named 'localhost'.

You can now upload these static files to your own site. If you have an Amazon account with an [S3 bucket configured for website hosting](http://docs.aws.amazon.com/AmazonS3/latest/dev/HowDoIWebsiteConfiguration.html), you can sync these files to the bucket by following the directions below:

**How to sync your presskit site to Amazon S3:**

1. If you're not there already, SSH into vagrant again and navigate to the /vagrant folder (steps 7 and 8 above).
2. [Set your AWS access key and secret key as environment variables.](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-environment) This is necessary to provide AWS your credentials for syncing to your bucket.
3. Run the `deploy-s3.sh` script, providing your bucket name as an argument. For example, `deploy-s3.sh presskit.mysite.com`

And you're done!


Simple. Fast. Free.
==========
Developers & press both have the same goal: to bring great games to as many people as possible - after all, a good game is worth nothing if no-one plays it. For the press, finding out about a game but not having access to information & media for the game means that they can't write about it. Of course, developers want to spend their valuable time making games instead of press pages.

presskit() (pronounced 'do presskit') is the solution. Free for everyone, open and easy-to-use for both developers & press. Developers only have to spend an hour or so creating well-laid out press pages with everything the press needs to write to their hearts desire. Everybody wins.


What is presskit()?
==========
Beautiful, optimized and efficient press pages in 30-60 minutes.
Usable by anyone who knows what FTP, text editing & image editing means.
Fast & painless 'Single File Upload'-installation.
Created using feedback of prominent journalists & indie developers.
Optional, seamless integration with Promoter & Google Analytics
What does beta mean?

presskit() is currently in beta, which means that all functionality is in there, but not everything has been tested. It also means that I officially take no responsibility for your presskit()-installation whatsoever. While I've tested it extensively and presskit() is incapable of damaging, deleting or modifying anything above its root installation directory, it might suddenly stop working, have some rough patches or not do exactly what you want. That's part of the deal.


What is new in presskit()?
==========
presskit() is currently in beta, which means new functions get added every now and then. Since its launch in early May, a lot of functions have been added. The manual has info on anything listed here that is not explained. These functions have been added recently:

Easily monitor who mentions you in the press with Promoter and embed awards and reviews that Promoter finds with a single click.
Integrate easily with Google Analytics to keep track of who, when and from where visits to your presskit() are made.
Enable or disable the press request section of a project by adding a <can-request-press-copy> tag set to FALSE.
You have a specific wish, idea or feedback? Get in touch at rami@vlambeer.com or at @tha_rami!


Why is presskit() free?
==========
The goal of creating presskit() was to save myself and the people in the press that want to write about Vlambeer as much time as possible.

As development of presskit() furthered, an increasing amount of fellow independent game creators asked about how easy it was to implement. This convinced me that this little project could make life easier for a lot more people than just myself.

presskit(), in the spirit of independent developers helping eachother out when it comes to making games or doing business, is completely free for anyone to use.


presskit() was only possible thanks to these fine folks!
==========

presskit() was created in just over a week by Rami Ismail of Dutch independent game studio Vlambeer. Rami does the business & development at Vlambeer and found himself looking for an efficient solution to press kits. presskit() was the result, but it wouldn't have been if it weren't for the following fine folks:

Andreas Zecher - Made by Pixelate - for the original inspiration that made me create this kit.
Jan Willem Nijman - Vlambeer - for starting Vlambeer with me, which eventually led to this thing.
Russ Frushtick - Polygon - for general feedback from a press-person point-of-view.
Martin Jonasson - grapefrukt - for challenging me to a race to see who could write the most efficient install script.
Joram Wolters - JoramWolters.com - for his always sharp critique on game & web design and functionality.
Jan Pieter van Seventer - Dutch Game Garden - for support & feedback.
Adriaan de Jongh - gameovenstudios.com - for distractions and meaningful Skype-conversations during presskit()s development.
Philip Tibitoski - octodadgame.com - for inspiring me to make this publically available.

The indie community at large for being amazing, open-minded, supportive, creative and interesting people.
Friends, family & girlfriend for allowing & supporting me to do what I love to do, to pursue my dreams and to make games.
