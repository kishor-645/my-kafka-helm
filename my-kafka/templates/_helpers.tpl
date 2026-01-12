{{- define "kafka.fullname" -}}
{{- .Release.Name -}}-kafka
{{- end -}}

{{- define "kafka.ui.fullname" -}}
{{- .Release.Name -}}-kafka-ui
{{- end -}}