#!/bin/bash
mail=$(imapfilter | awk '{print $5}' | sed 's/.0$//')
echo $mail
