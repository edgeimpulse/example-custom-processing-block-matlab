function [outputArg1] = custom_spectrogram(signal, output_graph_file_name, window, noverlap, fft)
x = signal;

h = figure('Visible', 'off');

[y,f,t,p] = spectrogram(x, window, noverlap, fft, 1, 'centered');

surf(t, f, 10*log10(abs(p)), 'EdgeColor', 'none');
axis xy; axis tight; colormap(jet); view(0,90);
xlabel('Samples');
ylabel('Normalized Frequency');

if (~isempty(output_graph_file_name))
    print(h, '-dpng', output_graph_file_name);
end
close(h);

outputArg1 = abs(y);

end
