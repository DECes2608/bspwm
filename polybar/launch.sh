#!/usr/bin/env bash

# Çalışan tüm polybar'ları kapat
killall -q polybar

# Polybar'ı başlat (config dosyasındaki "main" barını çağırır)
echo "---" | tee -a /tmp/polybar.log
polybar main >>/tmp/polybar.log 2>&1 &

echo "Polybar başlatıldı..."
