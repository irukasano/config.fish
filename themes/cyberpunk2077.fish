#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
#
# Cyberpunk 2077 theme for fishline
#

# Color for PWD and FULLPWD segment (カレントディレクトリ)
set FLCLR_PWD_BG            5fbf7f   # 緑寄りの色
set FLCLR_PWD_FG            ffffff   # 白
set FLCLR_PWD_BG_HOME       $FLCLR_PWD_BG
set FLCLR_PWD_FG_HOME       $FLCLR_PWD_FG
set FLCLR_FULLPWD_BG        $FLCLR_PWD_BG
set FLCLR_FULLPWD_FG        $FLCLR_PWD_FG

# Color for STATUS segment (コマンド実行結果)
set FLCLR_STATUS_BG         ff5a3c   # 明るい赤 (エラー強調)
set FLCLR_STATUS_FG         ffffff   # 白 (読みやすく)

# Color for WRITE segment (書き込み権限)
set FLCLR_WRITE_BG          a78038   # 黄 (警告系)
set FLCLR_WRITE_FG          ffffff   # 白

# Color for ARROW segment (セパレーター)
set FLCLR_ARROW_BG          $FLCLR_PWD_BG
set FLCLR_ARROW_FG          $FLCLR_PWD_FG

# Color for ROOT segment (ルートユーザー)
set FLCLR_ROOT_BG_USER      $FLCLR_PWD_BG
set FLCLR_ROOT_FG_USER      $FLCLR_PWD_FG
set FLCLR_ROOT_BG_ROOT      8c291b   # ダークレッド (警告)
set FLCLR_ROOT_FG_ROOT      ffffff   # 白

# Color for VFISH segment (仮想環境の識別)
set FLCLR_VFISH_BG          8cf07f   # 明るい緑
set FLCLR_VFISH_FG          262626   # ダークグレー (文字を見やすく)

# Color for CONDA segment (conda 仮想環境)
set FLCLR_CONDA_BG          $FLCLR_VFISH_BG
set FLCLR_CONDA_FG          $FLCLR_VFISH_FG

# Color for GIT segment (Git 状態表示)
set FLCLR_GIT_BG_CLEAN      5fbf7f   # 緑 (正常)
set FLCLR_GIT_FG_CLEAN      262626   # ダークグレー
set FLCLR_GIT_BG_DIRTY      ff5a3c   # 赤 (変更あり)
set FLCLR_GIT_FG_DIRTY      ffffff   # 白
set FLCLR_GIT_BG_DETACHED   e6b75a   # 黄色 (HEADが外れている)
set FLCLR_GIT_FG_DETACHED   262626   # ダークグレー

# Color for CLOCK segment (時刻)
set FLCLR_CLOCK_BG          70978e   # 罫線色 (落ち着いた青)
set FLCLR_CLOCK_FG          ffffff   # 白

# Color for USERHOST segment (ユーザーとホスト名)
set FLCLR_USERHOST_BG       ca6d60   # 赤みのあるサブカラー
set FLCLR_USERHOST_FG       ffffff   # 白

# Color for JOBS segment (バックグラウンドジョブ)
set FLCLR_JOBS_BG           86c1b9   # シアン寄りの青
set FLCLR_JOBS_FG           262626   # ダークグレー (視認性)

# Color for SCREEN segment (スクリーンセッション)
set FLCLR_SCREEN_BG         a4f2fb   # 明るいシアン
set FLCLR_SCREEN_FG         262626   # ダークグレー

