# CHALLENGES FACED & SOLUTIONS

## Challenge 1: Database Connection Issues

**Problem:** 
Could not connect to MongoDB database

**Solution Found:**
- Checked MongoDB service status
- Verified connection string
- Added error handling

**Learning:**
Always check service first, then configuration

---

## Challenge 2: CORS Errors

**Problem:**
Browser blocked API requests from frontend

**Solution Found:**
Installed and configured CORS middleware

\\\javascript
const cors = require('cors');
app.use(cors());
\\\

**Learning:**
Security features are important and must be configured properly

---

## Challenge 3: Data Validation

**Problem:**
Users submitting empty or invalid data

**Solution Found:**
Added input validation on frontend and backend

\\\javascript
if (!name || name.trim() === '') {
    return res.status(400).json({error: 'Name required'});
}
\\\

**Learning:**
Never trust user input - validate everything

---

## Challenge 4: Git Merge Conflicts

**Problem:**
Multiple changes in same file caused conflicts

**Solution Found:**
- Pulled latest changes frequently
- Communicated with team
- Resolved conflicts manually

**Learning:**
Regular git pulls prevent major conflicts

---

## Challenge 5: Time Management

**Problem:**
Features taking longer than estimated

**Solution Found:**
- Prioritized core features (MVP)
- Broke tasks into smaller pieces
- Used agile methodology

**Learning:**
Start with working product, then add features

---

## Key Takeaways

✅ Always have a backup plan
✅ Test each feature thoroughly
✅ Document everything
✅ Ask for help when stuck
✅ Learn from every error
