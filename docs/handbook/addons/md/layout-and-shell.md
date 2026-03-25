# Layout and application shell

This page describes the **big picture** users see when MdEditor is open.

## Regions of the screen

```text
+------------------+------------------------------+
|                  | Primary nav + context bar   |
|  Left sidebar    +------------------------------+
|  (~300px)        | Main content  | Right rail |
|                  | (your page)   | (optional)|
+------------------+------------------------------+
```
(Full window height; the left column and the block on the right share the same vertical space.)

1. **Left sidebar**  
   - Runs from the **top** of the window to the **bottom** (not only below the bars on the right).  
   - Contains **branding** (mdEditor-style wordmark, version, help) and **collapsible sections** (accordion navigation).  
   - On **small screens**, it can hide off-screen and reopen via a **menu (hamburger) button** in the primary navigation.

2. **Main column** (everything to the right of the left sidebar)  
   - **Chrome:**  
     - **Primary navigation** — global routes (Dashboard, Export, Import, Publish, Sync) and **Settings** on the right.  
     - **Context title bar** — a light strip that reflects the current area (e.g. “Dashboard,” “Records”).  
   - **Body:**  
     - **Main content** — where each route renders (your page).  
     - **Right sidebar** — optional rail for supplemental panels (placeholders today in the template).

## Who owns the layout?

The **`Md::AppShell`** component defines this structure. The MdEditor **`application`** template fills in each “slot” (left rail, primary nav, etc.) with concrete content.

## Responsiveness

- **Wide screens:** Left sidebar stays visible at about **300px** width.  
- **Narrow screens:** Sidebar becomes a **drawer** with a dimmed **backdrop**; the host app tracks open/closed state and closes the drawer when the backdrop is clicked.

For argument names and technical detail, see [App shell](./components/app-shell).
