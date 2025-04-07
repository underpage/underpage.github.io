---
order: 1
title: html
description: HTML Dialog Tag
summary:
keywords:
- web
- html
- tag
- dialog
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Dialog Tag
: 팝업, 모달, 오버레이 등 대화 상자 기능을 제공하는 태그


속성 | 설명
---|---
open | 내용 표시 여부 지정 (불리언 속성)


```html
<dialog open>
  <h1>팝업</h1>
</dialog>


<button type="button" id="btnToggleDialog">click</button>
<dialog id="dialog">
  <h1>팝업</h1>
</dialog>

<script>
const btn = document.getElementById('btnToggleDialog');
const dialog = document.getElementById('dialog');

btn.addEventListener('click', e => {
  dialog.open ? dialog.close() : dialog.show();
});
</script>


<dialog id="dialog" open>
  <h1>팝업</h1>
  <button id="btnCloseDialog">닫기</button>
</dialog>

<style>
dialog::backdrop {background:black;}
</style>

<script>
const btn = document.getElementById('btnCloseDialog');
const dialog = document.getElementById('dialog');

btn.addEventListener('click', e => {
  e.preventDefault();
  dialog.close();
});
</script>
```