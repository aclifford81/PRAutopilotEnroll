<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/aclifford81/PRAutopilotEnroll">
    <img src="https://images.squarespace-cdn.com/content/v1/60465802da33df62b0724eb8/1615223500282-IV1KVDK5BSGOASP2PO1V/CT.png" alt="Logo">
  </a>

<h3 align="center">Autopilot Autoenrollment Proactive Remiediation</h3>

  <p align="center">
    This is a proactive remediation that checks the serial number of a device enrolled in Intune to see if it's been onboarded into Autopilot.  If it has not, it generates the hardware hash and collects the other relevant data to automatically upload to the Autopilot servers. We use an app registration to add the hardware information to Autopilot automatically so that no administrator credentials are needed.
    <br />
    <a href="https://github.com/aclifford81/PRAutopilotEnroll"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/aclifford81/PRAutopilotEnroll">View Demo</a>
    ·
    <a href="https://github.com/aclifford81/PRAutopilotEnroll/issues">Report Bug</a>
    ·
    <a href="https://github.com/aclifford81/PRAutopilotEnroll/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>


<!-- GETTING STARTED -->
## Getting Started


### Prerequisites
<img src="/doc/AppRegistration.png" alt="Application Registration">
We must create an appication registration in order for the Proactice remediation to upload Autopilot data.
<ul>
<li>Start at https://portal.azure.com</li>
<li>Open Azure Active Directory</li>
<li>Create a new App Registation</li>
<li>Define a name</li>
<li>Select Accounts in this organizational directory only</li>
<li>Leave the Redirect URI Blank</li>
<li>Hit Register</li>
<li>Take note of the Application and Tenant IDs on the overview page, we will need these later</li>
<li>Go to "API permissions" on the navigation blade</li>
<li>Add a permission</li>
<li>Select Microsoft Graph</li>
<li>Select <b>Application permissions</b></li>
<li>Search for and select DeviceManagementServiceConfig.ReadWrite.All</li>
<li>Click on the button to grant admin consent</li>
<li>Go to "Certificates and Secrets" on the navigation blade</li>
<li>Create a Client secret set for 1 year, 2 years, or does not expire</li>
</li>Take not of the <b>value</b> of the secret.  Ignore the Secret ID.  Once we leave this page we can no longer view the secret value.</li>
</li> Update both scripts with the Application ID, Secret, and Tenant ID from the application registration</li>
</ul>

<a name="Installation"></a>
### Installation
<img src="/doc/IntunePR.png" alt="Intune Settings">




<!-- CONTACT -->
## Contact

Adam Clifford - [linkedin-shield][linkedin-url]- adam@cliffords.net

Project Link: [https://github.com/aclifford81/PRAutopilotEnroll](https://github.com/aclifford81/PRAutopilotEnroll)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/aclifford81/PRAutopilotEnroll.svg?style=for-the-badge
[contributors-url]: https://github.com/aclifford81/PRAutopilotEnroll/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/aclifford81/PRAutopilotEnroll.svg?style=for-the-badge
[forks-url]: https://github.com/aclifford81/PRAutopilotEnroll/network/members
[stars-shield]: https://img.shields.io/github/stars/aclifford81/PRAutopilotEnroll.svg?style=for-the-badge
[stars-url]: https://github.com/aclifford81/PRAutopilotEnroll/stargazers
[issues-shield]: https://img.shields.io/github/issues/aclifford81/PRAutopilotEnroll.svg?style=for-the-badge
[issues-url]: https://github.com/aclifford81/PRAutopilotEnroll/issues
[license-shield]: https://img.shields.io/github/license/aclifford81/PRAutopilotEnroll.svg?style=for-the-badge
[license-url]: https://github.com/aclifford81/PRAutopilotEnroll/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/adam-clifford-8b7880a0/
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 