# 🚀 Deploy Neurology Exam Prep to GitHub Pages

## Quick Summary
Your **neuro_exam_prep_responsive.html** is now fully optimized for mobile, tablet, and desktop. This guide shows you how to deploy it online for free using GitHub Pages. You can edit it in your repo — viewers see the live version but can't edit it.

---

## Step 1: Create a GitHub Account (If Needed)
Go to [github.com](https://github.com) and sign up if you don't already have an account.

---

## Step 2: Create a New Repository

1. Log into GitHub
2. Click the **+** icon (top right) → Select **New repository**
3. Name it: `neuro-exam-prep` (or any name you prefer)
4. Description (optional): "Interactive Neurology Exam Prep for Siriraj IM Residency"
5. Choose **Public** (so viewers can access it)
6. Check "Add a README file"
7. Click **Create repository**

---

## Step 3: Upload Your HTML File

**Option A: Web Upload (Easiest)**
1. In your new repo, click **Add file** → **Upload files**
2. Drag and drop **neuro_exam_prep_responsive.html** into the box
3. Click **Commit changes**

**Option B: Command Line (For Git Users)**
```bash
git clone https://github.com/YOUR_USERNAME/neuro-exam-prep.git
cd neuro-exam-prep
cp /path/to/neuro_exam_prep_responsive.html .
git add neuro_exam_prep_responsive.html
git commit -m "Add responsive neurology exam prep app"
git push origin main
```

---

## Step 4: Enable GitHub Pages

1. Go to your repo → **Settings** (top right)
2. Scroll left to **Pages** (in the left sidebar)
3. Under "Source":
   - Select branch: **main**
   - Select folder: **/ (root)**
4. Click **Save**
5. Wait ~1–2 minutes for deployment

---

## Step 5: Access Your Live App

GitHub will show you the URL. It looks like:
```
https://YOUR_USERNAME.github.io/neuro-exam-prep/neuro_exam_prep_responsive.html
```

**Or**, rename the file to `index.html`:
1. In your repo, click the file
2. Click **Edit** (pencil icon)
3. At the top, change the filename from `neuro_exam_prep_responsive.html` to `index.html`
4. Click **Commit changes**

Then your URL becomes:
```
https://YOUR_USERNAME.github.io/neuro-exam-prep/
```

---

## Step 6: Share & Verify Cross-Device

Test on:
- **Desktop** (Chrome, Safari, Firefox) ✓
- **iPad** (landscape & portrait) ✓
- **iPhone** (Safari, Chrome) ✓
- **Android** (Chrome) ✓

All should work perfectly — the responsive design adapts to every screen size!

---

## Responsive Features Included

✅ **Mobile Menu** — Hamburger icon on small screens  
✅ **Optimized Tables** — Stack and scroll on phones  
✅ **Touch-Friendly Buttons** — Larger tap targets on mobile  
✅ **Auto-Closing Menu** — Sidebar closes when you tap a link  
✅ **Fluid Typography** — Text scales for readability  
✅ **Breakpoints**:
- **< 480px** — Small phones
- **480–768px** — Large phones
- **769–1024px** — Tablets
- **> 1024px** — Desktop

---

## How to Edit (Only You Can)

1. Go to your repo on GitHub
2. Click **neuro_exam_prep_responsive.html**
3. Click the **Edit** (pencil) icon
4. Make changes
5. Click **Commit changes** at the bottom
6. Changes live in ~30 seconds!

**Viewers cannot edit** — they can only view the live app.

---

## Custom Domain (Optional)

To use your own domain like `exam.yourdomain.com`:

1. In **Settings** → **Pages**
2. Under "Custom domain" enter your domain
3. Add DNS records (GitHub will show you exactly what)

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page not loading | Wait 2–3 minutes after pushing. Refresh with Ctrl+Shift+R (hard refresh) |
| Mobile menu not working | Clear browser cache. Try a different browser |
| Tables look broken on phone | Should auto-stack. If not, try a hard refresh |
| Want to disable Google Analytics | Delete any tracking code from the HTML |
| 404 error | Make sure filename matches the URL exactly (case-sensitive on Linux) |

---

## Security & Privacy

✅ **Your code is public** (but read-only to others)  
✅ **No password needed to view**  
✅ **All processing happens in the browser** (no server collects data)  
✅ **HTTPS by default** (encrypted connection)  
✅ **GitHub Pages is free & reliable**  

---

## Next Steps

1. ✅ Create repo & upload HTML
2. ✅ Enable GitHub Pages
3. ✅ Test on mobile/tablet/desktop
4. ✅ Share the link with your study group
5. ✅ Edit HTML files in the repo to update content

---

## Need Help?

- **GitHub Pages Docs**: https://docs.github.com/en/pages
- **GitHub Community**: https://github.community/
- **Common Issues**: https://docs.github.com/en/pages/getting-started-with-github-pages/troubleshooting-github-pages

---

**🎉 You're all set!** Your interactive neurology exam prep app is now online, mobile-friendly, and read-only for viewers. Share it with your study group and start learning!
