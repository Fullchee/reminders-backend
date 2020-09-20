--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: links; Type: TABLE; Schema: public; Owner: dxzihgxerkgfkd
--

CREATE TABLE "public"."links" (
    "id" SERIAL,
    "keywords" "text",
    "title" "text" NOT NULL,
    "url" "text" NOT NULL UNIQUE,
    "takeaways" "text",
    "last_accessed" "date"
);


ALTER TABLE public.links OWNER TO dxzihgxerkgfkd;

--
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: dxzihgxerkgfkd
--

CREATE SEQUENCE "public"."links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.links_id_seq OWNER TO dxzihgxerkgfkd;

--
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dxzihgxerkgfkd
--

ALTER SEQUENCE "public"."links_id_seq" OWNED BY "public"."links"."id";


--
-- Name: links id; Type: DEFAULT; Schema: public; Owner: dxzihgxerkgfkd
--

ALTER TABLE ONLY "public"."links" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."links_id_seq"'::"regclass");


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: dxzihgxerkgfkd
--

COPY "public"."links" ("id", "keywords", "title", "url", "takeaways", "last_accessed") FROM stdin;
1	Purpose	Ask A Monk: Is There a Purpose In Life?	https://www.youtube.com/watch?v=Vs7MsSPSrdI		2019-12-01
2	Focus	Malcolm in the Middle: Staying on task	https://youtu.be/AbSehcT19u0		1970-01-01
4	Risk	Veritasium: Risk taking	https://www.youtube.com/watch?v=vBX-KulgJ1o		1970-01-01
5	Courage,Rational	Malcolm Gladwell’s 12 rules for life\nPulling the goalie earlier (rational)\nhard to be disagreeable	http://revisionisthistory.com/episodes/27-malcolm-gladwell-s-12-rules-for-life	Pulling the goalie earlier (rational)\n\nUnderstand that it's hard to be disagreeable	1970-01-01
6	Courage	Revisionist History: Big man can't shoot	https://dcs.megaphone.fm/PP2154689964.mp3?key=1768d4e97a3b41dabca1b49d0a398e52.mp3	Thresholds: Why good ideas don't take hold and spread	2018-01-14
7	Perspective	Carlos doesn't remember	http://revisionisthistory.com/episodes/04-carlos-doesnt-remember		2017-12-28
8	Empathy	Generous Orthodoxy	http://revisionisthistory.com/episodes/09-generous-orthodoxy		1970-01-01
9	Inspiration	How to be a man with Bill Withers	https://www.wnycstudios.org/podcasts/deathsexmoney/episodes/how-to-be-a-man-with-bill-withers		1970-01-01
10	Inspiration	Freakonomics: Jeremy Lin	https://traffic.omny.fm/d/clips/aaea4e69-af51-495e-afc9-a9760146922b/14a43378-edb2-49be-8511-ab0d000a7030/ae448ea4-281b-4b82-9f32-ab0d000d42b1/audio.mp3		1970-01-01
11	Inspiration,Team	Shane Battier	https://download.ted.com/talks/WorkLifeS001E003_2018V.mp3?apikey=acme-roadrunner.mp3		1970-01-01
12	Inspiration	Ira Glass on the Creative Process	https://www.youtube.com/watch?v=PbC4gqZGPSY		1970-01-01
15	Logic	Veritasium survivor bias	https://www.youtube.com/watch?v=_Qd3erAPI9w		1970-01-01
16		Veritasium: Learned Helplessness	https://www.youtube.com/watch?v=YMPzDiraNnA	Anything that’s worth doing is worth doing poorly	1970-01-01
18		Vlogbrothers:Ai Wei Wei and Poetry Makes Nothing Happen	https://www.youtube.com/watch?v=nDwTjPsG4b0	Hammering steel straight from collapsed schools\n\nVoice recording listing students who died\n 3 hours 41 mins	1970-01-01
19		Vlogbrothers: Story of 2 Syrian Refugees	https://www.youtube.com/watch?v=8WSagdz-0Ac&index=4&list=PL9EF0C1C9A93295C5		1970-01-01
20		Against the Rules: The Seven Minute Rule	https://dcs.megaphone.fm/DGT6566796581.mp3?key=4244c9d39b7fd725af7ab6bbd0b678ce.mp3		2019-11-01
21		Invisibilia: Frame of Reference: Part 2: Hasan Minhaj	https://ondemand.npr.org/anon.npr-mp3/npr/invsb/2016/07/20160707_invsb_frame.mp3		2020-04-10
22		Importance of boredom	https://www.youtube.com/watch?v=LKPwKFigF8U	Looking at your phone when bored is like shocking yourself	1970-01-01
23	Perspective	This is Water - David Foster Wallace	https://www.youtube.com/watch?v=8CrOL-ydFMI	Really reminded me of meditative practices. Great advice, takes practice to follow	2019-08-01
26		Hidden Brain: Designing your life			2018-01-01
28		Hidden Brain: Regrets, I Have a Few…	https://play.podtrac.com/npr-510308/ondemand.npr.org/anon.npr-mp3/npr/hiddenbrain/2017/09/20170911_hiddenbrain_hb_ep_81__regrets__i_have_a_few.mp3?orgId=1&topicId=1007&aggIds=423302056&d=1825&story=550260750&siteplayer=true&dl=1.mp3		2018-02-01
34		Vlogbrothers: Russian Reversal	https://www.youtube.com/watch?v=-mrJkEwAmVA		1970-01-01
37		Veritasium: Regression to the mean	https://www.youtube.com/watch?v=1tSqSMOyNFE		1970-01-01
38		Veritasium: The spacious present	https://www.youtube.com/watch?v=K4vyRvMASPU		1970-01-01
39		What you make of it	https://www.youtube.com/watch?v=HL4Vz-644GA	“How you feel at your worst is not how you’ll always feel	2019-09-01
40		Vlogbrothers: on pain	https://www.youtube.com/watch?v=Gxz-IBgeDHc		1970-01-01
41		Vlogbrothers: On Motivation	https://www.youtube.com/watch?v=Gp-kra5kvQY		1970-01-01
42		Vlogbrothers: On Punctuality	https://www.youtube.com/watch?v=dqgYnF4aygA		1970-01-01
43		On Middle School Misery	https://www.youtube.com/watch?v=u90dGnKhhlk	It's not about you.\n\n The only way out is through. You will get through.	1970-01-01
44		Vlogbrothers: On Mattering	https://www.youtube.com/watch?v=p-5DX4XqtUI	“Tonight, we feast on centuries of forgotten work	2019-08-31
46		What is NOT Random	https://www.youtube.com/watch?v=sMb00lz-IfE	the nature of randomness	2018-04-02
47		Invisibilia: A Secret History of Thoughts	https://edge2.pod.npr.org/anon.npr-podcasts/podcast/npr/invsb/2018/02/20180221_invsb_thoughts-fc9742fe-e422-45a0-87ac-b38db14603b0.mp3/20180221_invsb_thoughts-fc9742fe-e422-45a0-87ac-b38db14603b0.mp3_06d8d18f657e68b20d03a1c5db246aab_55533347.mp3?awCollectionId=510307&awEpisodeId=375981020&orgId=1&d=3446&p=510307&story=375981020&t=podcast&e=375981020&size=0&ft=pod&f=510307&hash_redirect=1&x-total-bytes=55533347&x-ais-classified=download&listeningSessionID=0CD_382_21__cf059dff0dc295cda951c6cc8e70e1e7e8f36e70.mp3	- Thoughts are just synapses firing randomly. They don’t have to mean anything	2018-04-01
3	Monitoring,Risk	People with addiction are the most evolutionary sensitive\nDrugs hijack those systems\nLike childhood trauma\nhabits served a purpose	https://www.wnycstudios.org/podcasts/radiolab/articles/addiction		2020-08-06
49		Vlogbrothers: What this picture doesn't show	https://www.youtube.com/watch?v=3AVNhTi9pzM	3 farmers on their way to a dance	2020-01-01
50		Hurry Slowly The Science of Sleep	https://hurryslowly.co/010-sigrid-veasey/	Sleep inertia	2020-01-17
51		Sandy Metz: Lucky You	https://www.youtube.com/watch?v=c5WWTvHB_sA		1970-01-01
52		Sandy Metz: You are insufficiently persuasive	https://www.youtube.com/watch?v=VzWLGMtXflg		1970-01-01
27		Hidden Brain: Tunnel Vision	https://play.podtrac.com/npr-510308/ondemand.npr.org/anon.npr-mp3/npr/hiddenbrain/2018/04/20180402_hiddenbrain_hb_ep_65__tunnel_vision_rebroadcast_mix_final.mp3?orgId=1&topicId=1001&aggIds=423302056&d=2200&story=598119170&dl=1&siteplayer=true&dl=1		2020-08-25
31		TVO Big Ideas: The Kite Runner	https://www.youtube.com/watch?v=FeWh5_ZGn9o	There is a way to be good again	2020-08-25
32		CBC Ideas: Doing the right thing	https://mp3.cbc.ca/radio/CBC_Radio_VMS/735/679/ideas_20150929_50542_uploaded.mp3		2020-08-25
45		Invisibilia: The Pattern Problem	https://ondemand.npr.org/anon.npr-podcasts/podcast/npr/invsb/2018/03/20180329_invsb_fragile-22749ecf-b334-4029-8a4b-781ad35d998c.mp3?orgId=1&topicId=1007&d=3468&p=64&story=597779735&dl=1&siteplayer=true&dl=1	- this really reminded me of how random life is	2020-08-25
53	Honor	Revisionist History: Basement Tapes	http://traffic.megaphone.fm/PPY7869295725.mp3	What is a son's duty to a father's legacy?	2020-08-25
55	Habits	Hidden Brain: Forming Habits	https://play.podtrac.com/npr-510308/edge1.pod.npr.org/anon.npr-podcasts/podcast/npr/hiddenbrain/2019/12/20191227_hiddenbrain_hb_pod_152_-_creatures_of_habit_-_dec_2019-aa58b2b4-85be-4b85-9218-75c6fc644625.mp3?awCollectionId=510308&awEpisodeId=787160734&orgId=1&topicId=1007&aggIds=423302056&d=3068&p=510308&story=787160734&t=podcast&e=787160734&size=48986949&ft=pod&f=510308	Friction	2020-01-18
56	Habits	Vlogbrothers: Productivity & the 80% Rule	https://www.youtube.com/watch?v=1LAhHDEtTD0	Productivity	2020-01-31
57		The power of mindfulness	https://www.youtube.com/watch?v=IeblJdB2-Vo	If you can sit quietly after difficult news;\n\nif in financial downturns you remain perfectly calm;\n\nif you can see your neighbors travel to fantastic places without a twinge of jealousy;\n\nif you can happily eat whatever is put on your plate;\n\nif you can fall asleep after a day of running around without a drink or a pill;\n\nif you can always find contentment just where you are:\n\nyou are probably a dog.\n\n– Jack Kornfield	1970-01-01
58	Compassion,Gratitude		https://www.youtube.com/watch?v=D38S9o_6qnc	We're all suffering. This is what connects us	2020-02-05
59		Imagining	https://www.youtube.com/watch?v=q4LItOvKyjI	Deep Hip Hop	2020-03-22
60		Chiijohn	https://www.youtube.com/watch?v=xa0oY7LQmtg		2020-03-22
61		The poop in my pants	https://www.youtube.com/watch?v=cHB_s970Uyw		2020-03-22
54		Revisionist History: Burden of proof	https://dcs.megaphone.fm/PPY2406807843.mp3	<p>Smoking, NFL: You should act before you have 100% proof</p>	2020-08-04
33	[object Object],[object Object]	CBC Ideas: Brother West	https://mp3.cbc.ca/radio/CBC_Radio_VMS/660/930/ideas_20150602_76544_uploaded.mp3	<p>Try again, fail again, fail better - Samuel Becket</p>\n<p>Who are you going to be from mother&rsquo;s womb to tomb?</p>\n<p>&nbsp;</p>\n<p><span style="font-weight: 400;">Q: Where do you find your hope? (45:45)</span></p>\n<p><span style="font-weight: 400;">A: <br />I <strong>don't think hope is predicated on the future getting better</strong>.</span><span style="font-weight: 400;"> That's the difference between hope and optimism. You see, I come from a people terrorized, ... traumatized, ... stigmatized for 400 years. </span></p>\n<p><span style="font-weight: 400;">You can imagine slaves in the first 30 years didn't believe things would get better, they just said "as a human being I am going to live this kind of life of integrity, honesty and decency. That's what I'm called here to do. </span></p>\n<p><span style="font-weight: 400;">Whether there's consequences that flow beyond that that make the world a better place is beyond my control." ...</span></p>\n<p><span style="font-weight: 400;">[He] said in the end it's about bearing witness and telling your truth and fusing and doing all you can do from your brief move from momma's womb to tomb and passing on to the next generation. </span></p>	2020-08-04
14		Hidden Brain Smoke and Mirrors	https://play.podtrac.com/npr-510308/ondemand.npr.org/anon.npr-mp3/npr/hiddenbrain/2016/06/20160630_hiddenbrain_episode37.mp3?orgId=1&topicId=1128&aggIds=423302056&d=1502&story=484214571&dl=1&siteplayer=true&dl=1		2020-08-25
17	Perspective	Planet Money: #217: The Art of Living on the Poverty Line	https://ondemand.npr.org/anon.npr-mp3/npr/pmoney/2016/05/20160524_pmoney_pmpod.mp3?orgId=1&d=1348&story=479349851&dl=1&siteplayer=true&dl=1		2020-08-25
24		Hidden Brain: in the heat of the moment	https://play.podtrac.com/npr-510308/ondemand.npr.org/anon.npr-mp3/npr/hiddenbrain/2017/08/20170828_hiddenbrain_ep56.mp3?orgId=1&aggIds=423302056&d=1749&story=546716951&dl=1&siteplayer=true&dl=1	Hot and cold states	2020-08-25
29		Radiolab: Unravelling Bolero	https://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast18unravelingbolero.mp3?aisGetOriginalStream=true	at the end it reminds me of Cornel West’s “I’ve been put on this earth and I choose to live a life of integrity, honesty, decency”	2020-08-25
30		Radiolab: How to be a hero	https://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast18howtohero.mp3		2020-08-25
35		Cappuccino Reconsidered (Planet Money) -	https://ondemand.npr.org/anon.npr-mp3/npr/blog/2010/12/20101217_blog_pmpod.mp3?orgId=1&story=132144507&dl=1&siteplayer=true&dl=1	About how the complex problems of this new world doesn’t have simple solutions	2020-08-25
36		Planet Money: When Luddites Attack	https://ondemand.npr.org/anon.npr-mp3/npr/blog/2015/05/20150506_blog_pmoney.mp3?orgId=1&d=1201&story=404701816&dl=1&siteplayer=true&dl=1	How The Luddites were justified in destroying machines\n\nit didn’t get better for everyone for at least 2 generations	2020-08-25
48	Risk	How to become Batman	https://edge2.pod.npr.org/anon.npr-podcasts/podcast/npr/invsb/2018/03/20180321_invsb_batman-6ffe9008-dae0-42bd-b268-77d43210d010.mp3/20180321_invsb_batman-6ffe9008-dae0-42bd-b268-77d43210d010.mp3_97103095b8ca9a1f7d92c91aaec0e9d1_55942115.mp3?awCollectionId=510307&awEpisodeId=379237713&orgId=1&d=3464&p=510307&story=379237713&t=podcast&e=379237713&size=0&ft=pod&f=510307&hash_redirect=1&x-total-bytes=55942115&x-ais-classified=streaming&x-access-range=0-&listeningSessionID=0CD_382_237__56b1111f93d6a05f9ac5a9961ceb0ecfa73ad584	raising expectations can lead blind people to see\n\nIncrease their willingness to take risks	2020-08-25
25		Codebreaker: Season 2: The Augmented Self: Minute 22	https://play.publicradio.org/edit/d/podcast/marketplace/codebreaker/2016/11/14/codebreaker_20161130_e3_411_20161114_128.mp3	Choreographed systems are choreographed so they can be efficient, not so they can be kind\n\n We only care about what we measure because we don’t know how to care about anything else\n\nDo you think that this technology saved you?\n\nI’m probably alive because of it. I think it’s probably saved me physically but it think it spiritually it bankrupted me\n\nHowever, maybe it’s possible to set your systems with the aim to maximize your well being, rather than productivity	2020-08-25
\.


--
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dxzihgxerkgfkd
--

SELECT pg_catalog.setval('"public"."links_id_seq"', 1, false);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: dxzihgxerkgfkd
--

ALTER TABLE ONLY "public"."links"
    ADD CONSTRAINT "links_pkey" PRIMARY KEY ("id");


--
-- PostgreSQL database dump complete
--

