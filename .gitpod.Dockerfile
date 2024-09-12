FROM gitpod/workspace-full

# Instalar dependências para rodar a interface gráfica (VNC)
RUN sudo apt-get update && \
    sudo apt-get install -y xfce4 xfce4-goodies x11vnc xvfb

# Instalar o TigerVNC Server para abrir a interface gráfica
RUN wget https://downloads.sourceforge.net/project/tigervnc/stable/1.12.0/tigervnc-1.12.0.x86_64.tar.gz && \
    tar -xzf tigervnc-1.12.0.x86_64.tar.gz && \
    mv tigervnc-1.12.0.x86_64/usr/* /usr/
