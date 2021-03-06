# cryptoparty

![](assets/banner2.png)

# What?

According to [Wikipedia](https://en.wikipedia.org/wiki/Cryptoparty),

> A CryptoParty is a grassroots global endeavour to introduce the basics of practical cryptography such as the Tor anonymity network, key signing parties, disk encryption and virtual private networks to the general public. The project primarily consists of a series of free public workshops.

### Why should I go to a cryptoparty?

* because it's fun
* to learn about the reality and dangers of mass surveillance 
* to learn some really cool mathematical concepts
* to learn how to use free software to protect your freedom

# FAQ

### Why should I care? Nothing bad is going to happen to me. 

> First they came for the Socialists, and I did not speak out — 
> Because I was not a Socialist.
> Then they came for the Trade Unionists, and I did not speak out— 
> Because I was not a Trade Unionist.
> Then they came for the Jews, and I did not speak out—
> Because I was not a Jew.
> [Then they came for me—and there was no one left to speak for me.](https://en.wikipedia.org/wiki/United_States_presidential_election,_2016)

-- [Martin Neimöller](https://en.wikipedia.org/wiki/First_they_came_...), about the Nazi's rise to power. 

### Where can I get slides and other material?

[Here](https://github.com/sg-s/cryptoparty/releases/)

### What is free software? 

[Free software](http://www.fsf.org/about/what-is-free-software) is software that gives you, the user, the freedom to share, study and modify it. Free software is necessary for computer security: *only* with free software can security be based not on blind trust, but on verifiable facts. If you can't verify, you can't trust. 

We use the word "free" here as in "freedom", not as in "free beer". 

### How secure is free software? 

The *most* secure. Non-free software doesn't allow independent, free audits, meaning you have no guarantee that it works in the way advertised. Non-free software doesn't let you patch security holes in them, leaving you at the mercy of the original author.  

### I don't have anything to hide (so have nothing to fear). Why should I use cryptography?

1. **Laws change, but surveillance data is immortal.** For example, you may agree to cameras in every home to prevent domestic violence ("and domestic violence only") - but the next day, a new political force in power could decide that homosexuality will again be illegal, and they will use the existing home cameras to enforce their new rules. Any surveillance must be regarded in terms of how it can be abused by a worse power than today's.
2. **Laws must be broken for society to change.** Less than a human lifetime ago, if you were born a homosexual, you were criminal from birth in the US. If today's surveillance level had existed in the 1950s and 60s, the lobby groups for sexual equality could never have formed; it would have been just a matter of rounding up the organized criminals ("and who could possibly object to fighting organized crime?"). If today's surveillance level had existed in the 1950s and 60s, homosexuality would still be illegal and homosexual people would be criminals by birth. 
3. **Privacy is a [fundamental](http://www.un.org/en/documents/udhr/) human right.** Privacy is a basic human need: Implying that only the dishonest people have need of any privacy ignores a basic property of the human psyche, and sends a creepy message of strong discomfort. We have a fundamental need for privacy. I lock the door when I go to the men's room, despite the fact that nothing secret happens in there. Arguing that you don't care about the right to privacy because you have nothing to hide is no different than saying you don't care about free speech because you have nothing to say. [A free press benefits more than just those who read the paper.](https://www.reddit.com/r/IAmA/comments/36ru89/just_days_left_to_kill_mass_surveillance_under/crglgh2)
4. **Surveillance is a one-way street that reinforces power.** Mass surveillance maintains and concentrates power; those who surveil are often those who declare themselves beyond public accountability. As Tony Benn and Yanis Varoufakis pointed out, you know you are not living a democratic system when people in power refuse to tell you what powers they have, and what you can do to take those powers away from them. 

### What can I do?

1. Organise, organise, [organise.](http://www.geo.coop/story/chomskys-challenge-organize-scale) 
2. **Leverage technology**. The rest of this document is meant to inform you about the tools you can use to protect yourself from malicious actors. 

# Installation Instructions 

This sections shows you how to install [gpg](https://www.gnupg.org/), which allows you to encrypt messages, and the [TorBrowser](https://www.torproject.org/), which anonymises your communication. 

## Mac OS X

**required** We'll use the Terminal a lot, so keep it in your Dock. Open the Terminal by typing `Cmd` + `space` and typing `Terminal` and hit `return`. Right-click and choose "Keep in Dock" as shown below. 

![](assets/terminal-dock.png)

**optional** Things are much easier if you have the fantastic [homebrew](http://brew.sh) package manger installed. To install homebrew, you need to first install [XCode](https://developer.apple.com/xcode/downloads/). 

Then install brew by typing this into a Terminal window:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### gpg

[GPGTools](https://gpgtools.org/) offers a convenient download that installs everything you need. 

Attention `homebrew` users! `brew install gpg` installs an old "portable" version of gpg (1.4.18), while GPGTools installs the latest stable version (2.0.26). To install the latest stable version, use:

```bash
brew install gnupg2
```

or if you want the *really* modern version with ECC, use:

```bash
brew install homebrew/versions/gnupg21
```

### TorBrowser

**If you have brew installed** type this into a Terminal window and press `return`

```bash
brew install caskroom/cask/brew-cask
brew cask install tor-browser
```

**If you don't have brew installed** 

Download it directly from [here](https://www.torproject.org/projects/torbrowser.html.en).


## GNU/Linux

If you're using GNU/Linux, GNU/Hurd, etc., I assume you know what you're doing. Please install:

* [gpg](https://www.gnupg.org/)
* [TorBrowser](https://www.torproject.org/). 

## Windows 

### gpg

Download GPG4Win from [here](http://gpg4win.org/download.html) and install it. 

### TorBrowser

Download and install the TorBrowser [here](https://www.torproject.org/projects/torbrowser.html.en#windows).

# How to Use Stuff 

## gpg 

### Make a key

The first thing you want to do is to make a key. Open `Terminal` or (`cmd` on Windows)and type

```bash
gpg --gen-key
```
  
You will see something like this:

```
gpg (GnuPG) 1.4.18; Copyright (C) 2014 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection?
```

Press `1` and `return`

You will then see this:

```bash
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048)
```

Type `4096` (we want keys to be as hard to break as possible) and type `return`. The next prompt will be:

```bash
Requested keysize is 4096 bits       
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 
```

Type `0` (because we don't want our keys to expire) and press `return`

```` bash
Key does not expire at all
Is this correct? (y/N)
````

Type `y` and then `return`. Follow the final steps through (you don't need a real name):

````bash
                        
You need a user ID to identify your key; the software constructs the user ID
from the Real Name, Comment and Email Address in this form:
    "Heinrich Heine (Der Dichter) <heinrichh@duesseldorf.de>"

Real name: Moo Cow
Email address: moo@cow.com
Comment:                  
You selected this USER-ID:
    "Moo Cow <moo@cow.com>"

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? 
````

Press `O` for OK, then press `return`

````bash
You need a Passphrase to protect your secret key.    

We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
.............+++++
....+++++
````

Finally, when everything is done, you'll see something like this:


````bash
gpg: /Users/moocow/.gnupg/trustdb.gpg: trustdb created
gpg: key E6A0F631 marked as ultimately trusted
public and secret key created and signed.

gpg: checking the trustdb
gpg: 3 marginal(s) needed, 1 complete(s) needed, PGP trust model
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
pub   4096R/E6A0F631 2015-02-01
      Key fingerprint = 9DA8 5002 A98E 7217 8780  5FEF 6D61 F3FA E6A0 F631
uid                  Moo Cow <moo@cow.com>
sub   4096R/E4EFD8D3 2015-02-01
````

Excellent! We have now made a key that we can both to encrypt messages to other people (the private key), and that we can hand out to other people to encrypt messages to us (the public key).

### Export and publish your **public** key

First, ask `gpg` to show you what public keys you have using

```bash
gpg -k

/Users/moocow/.gnupg/pubring.gpg
- --------------------------------
pub   4096R/E6A0F631 2015-02-01
uid                  Moo Cow <moo@cow.com>
sub   4096R/E4EFD8D3 2015-02-01

```

The whole point of public-key cryptography is to have your keys as widely distributed as possible. `keyservers` are machines that list public keys for all to see, so that someone looking for our public key can find it easily. gpg allows you to directly send your keys to your keyserver of choice. Here, we can send our key to the MIT keyserver:

```bash
gpg --keyserver pgp.mit.edu --send-key E6A0F631
```

where `E6A0F631` is the ID of our public key. (use `gpg -k` to list all keys and their IDs)

Alternatively, you can export the key you want using

```bash
gpg --armor --export moo@cow.com > moo.txt
```

The public key will be saved in a file called `moo.txt`. You should now distribute this key widely, for example, by uploading it to the [MIT key server](http://pgp.mit.edu/).

Windows users, use this instead:


```bash
gpg --armor --export moo@cow.com 
```

and copy and paste the key from the command prompt. 

### Verify and import friend's key

After downloading a friend's key (say it's in a file called `doge.asc`), navigate to that folder and type:

```bash
gpg --with-fingerprint doge.asc
```

Verify that this fingerprint is correct by talking to your friend (or relying on a non-electronic channel of communication). If it's correct, import is using

```bash
gpg --import doge.asc
```

### Encrypt a message to a friend 

Let's say you have a top-secret message in a text file called `secret.txt`. To encrypt it, use

```bash
gpg -e -u moo@cow.com -r doge@wow.com secret.txt
```

Here, we're telling gpg that we want to encrypt something (with `-e`), that we are moo@cow.com (`-u` is for "user") and that we want to encrypt it for doge@wow.com (`-r` is for "recipient").

gpg makes a new file called `secret.txt.gpg`. If you open it, it will look something like this:

```bash
8501 0c03 bc71 bc35 c911 0486 0107 fc0d
12d8 9e0c ed7a 5570 4f95 9545 ab13 0a26
518b 4640 e4aa 7aa8 4481 a4bf 2f1b defe
b855 b1cd 5ca0 d22c 50cb d9a6 b96d 5d3d
1e4a 0cf7 80d0 d4a2 0c34 aecf ff42 5a20
a724 3f54 c91f ed60 ee4e 6864 fc94 74ae
3eba c876 d6f3 7249 7830 9fba 070f 0976
a9d2 053d 1d25 6132 494d d271 5f46 7091
d2c4 3245 9782 c938 4d3b bc2a fff7 64db
```

### Decrypt a message from a friend

If a message from a friend is in `secret.txt`, decrypt it using:

```bash
gpg -d secret.txt
```

### Sign a document 

There are two ways to sign a document: first, to wrap the document in a cryptographic signature, which necessarily modifies the document, or to create the signature in a separate file, using what is called a detached signature. Here, we will perform the first method, called a `clearsign`.

If you want to sign a plain-text document called `cowsay.txt`, do so with 

```bash
gpg --clearsign cowsay.txt
```

`gpg` will create a file called `cowsay.txt.asc` with the signature. You can rename and change the extension to whatever you want. 

### Verify a signed document 

Assuming you have a clearsigned document in `doge.txt.asc`, that has been signed by your friend, and you have his public key, you can verify that this document is legitimate using

``` bash
gpg --verify doge.txt.asc
```

and if you see something like:

```bash
gpg: Signature made Sun Feb  1 11:04:39 2015 EST using RSA key ID DOGE9999
gpg: Good signature from "The Doge <wow@doge.dog>" [unknown]
```

it means the signature and document are authentic. If on the other hand, you see something like this:

```bash
gpg: Signature made Sun Feb  1 11:09:26 2015 EST using RSA key ID DOGE9999
gpg: BAD signature from "The Doge <wow@doge.dog>" [unknown]
```

this means the document has been tampered with by a nefarious party. 

## tor 

Tor allows you to anonymise your activity on the internet. This means that if you visit a website, that website doesn't know where you're coming from. Without Tor, websites we visit know (among other things) where you live. Go to `http://smart-ip.net/geoip`  to see where that website thinks you live.

![](assets/without-tor.png)

It seems to have a pretty good idea! Now, fire up `TorBrowser`. If everything is configured correctly, you should see this:

![](assets/tor-browser.png)

Now, if we visit `http://smart-ip.net/geoip` again, we see something else (your location will vary, as the Tor network will route you through a different node in the network):

![](assets/with-tor.png)

Note that it got the country wrong, and the location detail it could pull out wasn't more specific than a whole country. 

# Further Reading and Resources

## Videos

* [Citizenfour](https://en.wikipedia.org/wiki/Citizenfour) Laura Poitras' award winning documentary on Edward Snowden. This is free to watch and download on the [Internet Archive](https://archive.org/details/LauraPoitrasCitizenfour).
* [Selma](http://www.imdb.com/title/tt1020072/). *Selma* is really a movie about surveillance. MLK was the target of an [intensive surveillance campaign](http://en.wikipedia.org/wiki/Mass_surveillance_in_the_United_States#cite_note-Church-23) by the FBI to "neutralize" him as an effective civil rights activist. A FBI memo recognized King to be the "most dangerous and effective Negro leader in the country.", and the agency wanted to discredit him by collecting evidence to (unsuccessfully) prove that he had been influenced by [communism](http://edition.cnn.com/2008/US/03/31/mlk.fbi.conspiracy/).
* [GPG For Journalists](http://vimeo.com/56881481) Interesting for its historic significance, this video was made by Edward Snowden in a (futile) attempt to get a [journalist](https://firstlook.org/theintercept/staff/glenn-greenwald/) to use GPG. More than anything, this illustrates the complexity of security software and its resultant [inaccessibility](https://media.ccc.de/browse/congress/2014/31c3_-_6021_-_en_-_saal_g_-_201412281130_-_why_is_gpg_damn_near_unusable_-_arne_padmos.html). 
* [Free software, free society: Richard Stallman at TEDxGeneva 2014](https://www.youtube.com/watch?v=Ag1AKIl_2GM). Richard Stallman talking about free software and why it matters. A good introduction to the Free Software Movement. 
* [Bruce Schneier in conversation with Edward Snowden](https://www.youtube.com/watch?v=7Ui3tLbzIgQ).

## Tutorials

* [My tutorial on configuring and using your own server](https://github.com/sg-s/macbook-server)


## Key Essays

* [You and the Atomic Bomb](http://orwell.ru/library/articles/ABomb/english/e_abomb)
* [A Cypherpunk's Manifesto](http://www.activism.net/cypherpunk/manifesto.html)
* [Guerilla Open Access Manifesto ](https://archive.org/stream/GuerillaOpenAccessManifesto/Goamjuly2008_djvu.txt)
* [Who Should Own the Internet](http://www.nytimes.com/2014/12/04/opinion/julian-assange-on-living-in-a-surveillance-society.html)
* [Debunking the dangerous nothing to hide nothing to fear](http://falkvinge.net/2012/07/19/debunking-the-dangerous-nothing-to-hide-nothing-to-fear/)
* [Ed Snowden Taught Me To Smuggle Secrets Past Incredible Danger. Now I Teach You](https://firstlook.org/theintercept/2014/10/28/smuggling-snowden-secrets/) A fascinating first-hand account by Micah Lee on how he helped journalists communicate securely. 

## Books

* [The GPG Privacy Handbook](https://www.gnupg.org/gph/en/manual.html) The definitve guide to using GPG
* [When Google Met Wikileaks](http://www.orbooks.com/catalog/when-google-met-wikileaks/)
* [Cypherpunks](http://www.orbooks.com/catalog/cypherpunks/)
* [This Machine Kills Secrets](http://www.thismachinekillssecrets.com/)
* [The Traveller](https://en.wikipedia.org/wiki/The_Traveler_%28novel%29) This fictional book's major theme living within a [Panopticon](https://en.wikipedia.org/wiki/Panopticon), or a world of universal surveillance. 

## Links
* [The EFF's PanoptiClick](https://panopticlick.eff.org/)
* [Prism Break](https://prism-break.org/en/) A database of software and services you can switch to to maximise the cost of spying on you.
* [Blender](https://addons.mozilla.org/en-us/firefox/addon/blender-1/) Firefox plugin that spoofs common browser configurations.  
* [The Cryptoparty homepage](https://www.cryptoparty.in/index)
* [The MIT Key Server](http://pgp.mit.edu/)
* [The NSA Files Decoded](http://www.theguardian.com/world/interactive/2013/nov/01/snowden-nsa-files-surveillance-revelations-decoded#section/1) A *Guardian* special feature on mass surveillance by the NSA. 

## Software

* [uBlock Origin](https://github.com/gorhill/uBlock/) The best ad-blocker out there. Ads are part of the surveillance system of the web. 
* [Signal](https://whispersystems.org/) Signal is an easy to use, end-to-end encrypted messaging system for your phone. Don't use WhatsApp or facebook messenger!
* [TAILS](https://tails.boum.org/). Tails is a hardened live operating system that routes everything over Tor and allows no local changes. 
* [Firefox](https://www.mozilla.org/en-US/firefox/new/). The most widely used free browser. 
* [HTTPS Everywhere](https://www.eff.org/https-everywhere) A plugin made by EFF to force encrypted connections in the browser

## Services

* [DuckDuckGo](https://duckduckgo.com/) A search engine that claims to respect your privacy.

# License 

Public Domain. 
