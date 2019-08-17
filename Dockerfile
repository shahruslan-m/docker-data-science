FROM continuumio/anaconda3

ENV PATH /root/anaconda3/bin:$PATH

RUN mkdir /opt/notebooks \
	&& /opt/conda/bin/conda install jupyter -y --quiet \
	&& /opt/conda/bin/jupyter notebook --generate-config --allow-root \
	&& echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py


EXPOSE 8888

CMD ["/opt/conda/bin/jupyter", "notebook", "--allow-root", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]
