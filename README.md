# V2ray for Doprax

Create By ifeng<br>
Web Site: https://www.hicairo.com <br>
Telegram: https://t.me/HiaiFeng <br>

# Introduction:

This project is used to deploy V2ray on Doprax.com free service. The solution adopted is Nginx + WebSocket + VMess/VLess + TLS. The speed is slower than Replit, but the official promotion is that there is no traffic limit and the service will never stop after it is started.

# Precautions:

<p><b><li>Please do not abuse, account ban will be at your own risk. </li></b></p>
<p><b><li>If you find that you cannot access the Internet after the deployment is completed, please check whether the domain name is blocked. You can use Cloudflare CDN to solve the problem. </li></b></p>

# Deployment:

<p>1. Log in to your GitHub account and Fork the project. </p>
<p>2. Register <a href="https://www.doprax.com/signup/">Doprax.com</a> and log in with your account to import the project. </p>
<p>For detailed usage plan, please refer to: https://www.hicairo.com/post/55.html</p>

# Instructions:

<p>1. Server-side configuration</p>
<p>Please use <a href="https://www.v2fly.org/awesome/tools.html">third-party tools</a> to generate a new UUID. After logging in to Doprax.com, click Main in the left menu, Edit source code on the right side of the window, select the Dockerfile file, edit the UUID and camouflage address information, save it and restart the service. </p>
<img src="https://hicairo.com/zb_users/upload/2022/12/202212291672276227538571.webp">
<pre class="notranslate"><code># Replace de04add9-5c68-8bab-950c-08cd5320df18 with the newly generated UUID
ENV UUID de04add9-5c68-8bab-950c-08cd5320df18
# VMESS_WSPATH / VLESS_WSPATH two constants define the camouflage path of Vmess/VLess respectively.
# Please modify vmess or vless in the content respectively. Note: The disguised path starts with the / symbol. To avoid unnecessary trouble, please do not use special symbols.
ENV VMESS_WSPATH /vmess
ENV VLESS_WSPATH /vless
</code></pre>

<p>2. Client configuration</p>
<p>Node client configuration needs to be done manually. The following takes V2rayN as an example.
<p>The picture below is a schematic diagram of the VMess configuration. Please modify the label content. The other settings are consistent with those shown in the picture. </p>
<img src="https://www.hicairo.com/zb_users/upload/2022/12/202212291672276258394161.webp">
<p>The picture below is a schematic diagram of VLess configuration. Please modify the label content. The other settings are consistent with those shown in the picture. </p>
<img src="https://www.hicairo.com/zb_users/upload/2022/12/202212291672276274474231.webp">

# Feedback and communication:

<p>If you encounter any problems during use, please use Telegram to contact me. (https://t.me/HiaiFeng)</p>
<p>Hi everyone, Doprax pays great attention to user experience. Mr. Hemen and his team have created a Discord service for the Doprax community. If you encounter problems related to the Doprax platform or have some suggestions for the platform during use, please use the following link to contact the official.

Hello everyone! Doprax pays great attention to user experience. Mr. Hemen and his team have created a Discord service for the Doprax community. If you encounter any problems or have any suggestions related to the Doprax platform during use, please contact the official using the link below.

https://discord.gg/pFnGwTuXjk</p>
